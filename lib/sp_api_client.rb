require 'aws-sigv4'

require 'api_error'
require 'api_client'

module AmzSpApi
  class SpApiClient < ApiClient
    def initialize(config = SpConfiguration.default)
      super(config)
    end

    alias super_call_api call_api
    def call_api(http_method, path, opts = {})
      unsigned_request = build_request(http_method, path, opts)
      aws_headers = auth_headers(http_method, unsigned_request.url, unsigned_request.encoded_body)
      signed_opts = opts.merge(header_params: aws_headers.merge(opts[:header_params] || {}))
      super(http_method, path, signed_opts)
    end

    private

    def retrieve_lwa_access_token
      return request_lwa_access_token[:access_token] unless config.get_access_token

      stored_token = config.get_access_token.call(config.access_token_key)
      if stored_token.nil?
        new_token = request_lwa_access_token
        if config.save_access_token
          config.save_access_token.call(config.access_token_key,
                                        new_token)
        end
        new_token[:access_token]
      else
        stored_token
      end
    end

    def request_lwa_access_token
      newself = dup
      newself.config = config.dup
      newself.config.host = 'api.amazon.com'

      form_params = {
        client_id: config.client_id,
        client_secret: config.client_secret
      }

      if config.refresh_token
        form_params.merge!({
                             grant_type: 'refresh_token',
                             refresh_token: config.refresh_token
                           })
      else
        form_params.merge!({
                             grant_type: 'client_credentials',
                             scope: config.scope
                           })
      end

      data, status_code, headers = newself.super_call_api(:POST, '/auth/o2/token',
                                                          header_params: {
                                                            'Content-Type' => 'application/x-www-form-urlencoded'
                                                          },
                                                          form_params: form_params,
                                                          return_type: 'Object')

      unless data && data[:access_token]
        raise ApiError.new(code: status_code,
                           response_headers: headers,
                           response_body: data)
      end

      data
    end

    def signed_request_headers(http_method, url, body)
      request_config = {
        service: 'execute-api',
        region: config.aws_region
      }
      if config.credentials_provider
        request_config[:credentials_provider] = config.credentials_provider
      else
        request_config[:access_key_id] = config.aws_access_key_id
        request_config[:secret_access_key] = config.aws_secret_access_key
      end
      signer = Aws::Sigv4::Signer.new(request_config)
      signer.sign_request(http_method: http_method.to_s, url: url, body: body).headers
    end

    def auth_headers(http_method, url, body)
      signed_request_headers(http_method, url, body).merge({
                                                             'x-amz-access-token' => retrieve_lwa_access_token
                                                           })
    end
  end
end
