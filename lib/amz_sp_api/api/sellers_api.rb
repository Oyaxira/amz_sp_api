=begin
#Selling Partner API for Sellers

#The Selling Partner API for Sellers lets you retrieve information on behalf of sellers about their seller account, such as the marketplaces they participate in. Along with listing the marketplaces that a seller can sell in, the API also provides additional information about the marketplace such as the default language and the default currency. The API also provides seller-specific information such as whether the seller has suspended listings in that marketplace.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

module AmzSpApi
  class SellersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of marketplaces that the seller submitting the request can sell in and information about the seller's participation in those marketplaces.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | .016 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param [Hash] opts the optional parameters
    # @return [GetMarketplaceParticipationsResponse]
    def get_marketplace_participations(opts = {})
      data, _status_code, _headers = get_marketplace_participations_with_http_info(opts)
      data
    end

    # Returns a list of marketplaces that the seller submitting the request can sell in and information about the seller&#x27;s participation in those marketplaces.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | .016 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetMarketplaceParticipationsResponse, Integer, Hash)>] GetMarketplaceParticipationsResponse data, response status code and response headers
    def get_marketplace_participations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SellersApi.get_marketplace_participations ...'
      end
      # resource path
      local_var_path = '/sellers/v1/marketplaceParticipations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'payload'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetMarketplaceParticipationsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SellersApi#get_marketplace_participations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
