=begin
#Selling Partner API for Services

#With the Services API, you can build applications that help service providers get and modify their service orders.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

module AmzSpApi::ServicesApiModel
  class ServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds an appointment to the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param body Add appointment operation input details.
    # @param service_job_id An Amazon defined service job identifier.
    # @param [Hash] opts the optional parameters
    # @return [SetAppointmentResponse]
    def add_appointment_for_service_job_by_service_job_id(body, service_job_id, opts = {})
      data, _status_code, _headers = add_appointment_for_service_job_by_service_job_id_with_http_info(body, service_job_id, opts)
      data
    end

    # Adds an appointment to the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param body Add appointment operation input details.
    # @param service_job_id An Amazon defined service job identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SetAppointmentResponse, Integer, Hash)>] SetAppointmentResponse data, response status code and response headers
    def add_appointment_for_service_job_by_service_job_id_with_http_info(body, service_job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.add_appointment_for_service_job_by_service_job_id ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceApi.add_appointment_for_service_job_by_service_job_id"
      end
      # verify the required parameter 'service_job_id' is set
      if @api_client.config.client_side_validation && service_job_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_job_id' when calling ServiceApi.add_appointment_for_service_job_by_service_job_id"
      end
      # resource path
      local_var_path = '/service/v1/serviceJobs/{serviceJobId}/appointments'.sub('{' + 'serviceJobId' + '}', service_job_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'SetAppointmentResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#add_appointment_for_service_job_by_service_job_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Cancels the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param service_job_id An Amazon defined service job identifier.
    # @param cancellation_reason_code A cancel reason code that specifies the reason for cancelling a service job.
    # @param [Hash] opts the optional parameters
    # @return [CancelServiceJobByServiceJobIdResponse]
    def cancel_service_job_by_service_job_id(service_job_id, cancellation_reason_code, opts = {})
      data, _status_code, _headers = cancel_service_job_by_service_job_id_with_http_info(service_job_id, cancellation_reason_code, opts)
      data
    end

    # Cancels the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param service_job_id An Amazon defined service job identifier.
    # @param cancellation_reason_code A cancel reason code that specifies the reason for cancelling a service job.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CancelServiceJobByServiceJobIdResponse, Integer, Hash)>] CancelServiceJobByServiceJobIdResponse data, response status code and response headers
    def cancel_service_job_by_service_job_id_with_http_info(service_job_id, cancellation_reason_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.cancel_service_job_by_service_job_id ...'
      end
      # verify the required parameter 'service_job_id' is set
      if @api_client.config.client_side_validation && service_job_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_job_id' when calling ServiceApi.cancel_service_job_by_service_job_id"
      end
      # verify the required parameter 'cancellation_reason_code' is set
      if @api_client.config.client_side_validation && cancellation_reason_code.nil?
        fail ArgumentError, "Missing the required parameter 'cancellation_reason_code' when calling ServiceApi.cancel_service_job_by_service_job_id"
      end
      # resource path
      local_var_path = '/service/v1/serviceJobs/{serviceJobId}/cancellations'.sub('{' + 'serviceJobId' + '}', service_job_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cancellationReasonCode'] = cancellation_reason_code

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CancelServiceJobByServiceJobIdResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#cancel_service_job_by_service_job_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Completes the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param service_job_id An Amazon defined service job identifier.
    # @param [Hash] opts the optional parameters
    # @return [CompleteServiceJobByServiceJobIdResponse]
    def complete_service_job_by_service_job_id(service_job_id, opts = {})
      data, _status_code, _headers = complete_service_job_by_service_job_id_with_http_info(service_job_id, opts)
      data
    end

    # Completes the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param service_job_id An Amazon defined service job identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompleteServiceJobByServiceJobIdResponse, Integer, Hash)>] CompleteServiceJobByServiceJobIdResponse data, response status code and response headers
    def complete_service_job_by_service_job_id_with_http_info(service_job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.complete_service_job_by_service_job_id ...'
      end
      # verify the required parameter 'service_job_id' is set
      if @api_client.config.client_side_validation && service_job_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_job_id' when calling ServiceApi.complete_service_job_by_service_job_id"
      end
      # resource path
      local_var_path = '/service/v1/serviceJobs/{serviceJobId}/completions'.sub('{' + 'serviceJobId' + '}', service_job_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CompleteServiceJobByServiceJobIdResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#complete_service_job_by_service_job_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets service job details for the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 20 | 40 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param service_job_id A service job identifier.
    # @param [Hash] opts the optional parameters
    # @return [GetServiceJobByServiceJobIdResponse]
    def get_service_job_by_service_job_id(service_job_id, opts = {})
      data, _status_code, _headers = get_service_job_by_service_job_id_with_http_info(service_job_id, opts)
      data
    end

    # Gets service job details for the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 20 | 40 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param service_job_id A service job identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetServiceJobByServiceJobIdResponse, Integer, Hash)>] GetServiceJobByServiceJobIdResponse data, response status code and response headers
    def get_service_job_by_service_job_id_with_http_info(service_job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.get_service_job_by_service_job_id ...'
      end
      # verify the required parameter 'service_job_id' is set
      if @api_client.config.client_side_validation && service_job_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_job_id' when calling ServiceApi.get_service_job_by_service_job_id"
      end
      # resource path
      local_var_path = '/service/v1/serviceJobs/{serviceJobId}'.sub('{' + 'serviceJobId' + '}', service_job_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetServiceJobByServiceJobIdResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#get_service_job_by_service_job_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets service job details for the specified filter query.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 40 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param marketplace_ids Used to select jobs that were placed in the specified marketplaces. 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :service_order_ids List of service order ids for the query you want to perform.Max values supported 20. 
    # @option opts [Array<String>] :service_job_status A list of one or more job status by which to filter the list of jobs.
    # @option opts [String] :page_token String returned in the response of your previous request.
    # @option opts [Integer] :page_size A non-negative integer that indicates the maximum number of jobs to return in the list, Value must be 1 - 20. Default 20.  (default to 20)
    # @option opts [String] :sort_field Sort fields on which you want to sort the output.
    # @option opts [String] :sort_order Sort order for the query you want to perform.
    # @option opts [String] :created_after A date used for selecting jobs created after (or at) a specified time must be in ISO 8601 format. Required if LastUpdatedAfter is not specified.Specifying both CreatedAfter and LastUpdatedAfter returns an error. 
    # @option opts [String] :created_before A date used for selecting jobs created before (or at) a specified time must be in ISO 8601 format. 
    # @option opts [String] :last_updated_after A date used for selecting jobs updated after (or at) a specified time must be in ISO 8601 format. Required if createdAfter is not specified.Specifying both CreatedAfter and LastUpdatedAfter returns an error. 
    # @option opts [String] :last_updated_before A date used for selecting jobs updated before (or at) a specified time must be in ISO 8601 format. 
    # @option opts [String] :schedule_start_date A date used for filtering jobs schedule after (or at) a specified time must be in ISO 8601 format. schedule end date should not be earlier than schedule start date. 
    # @option opts [String] :schedule_end_date A date used for filtering jobs schedule before (or at) a specified time must be in ISO 8601 format. schedule end date should not be earlier than schedule start date. 
    # @return [GetServiceJobsResponse]
    def get_service_jobs(marketplace_ids, opts = {})
      data, _status_code, _headers = get_service_jobs_with_http_info(marketplace_ids, opts)
      data
    end

    # Gets service job details for the specified filter query.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 40 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param marketplace_ids Used to select jobs that were placed in the specified marketplaces. 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :service_order_ids List of service order ids for the query you want to perform.Max values supported 20. 
    # @option opts [Array<String>] :service_job_status A list of one or more job status by which to filter the list of jobs.
    # @option opts [String] :page_token String returned in the response of your previous request.
    # @option opts [Integer] :page_size A non-negative integer that indicates the maximum number of jobs to return in the list, Value must be 1 - 20. Default 20. 
    # @option opts [String] :sort_field Sort fields on which you want to sort the output.
    # @option opts [String] :sort_order Sort order for the query you want to perform.
    # @option opts [String] :created_after A date used for selecting jobs created after (or at) a specified time must be in ISO 8601 format. Required if LastUpdatedAfter is not specified.Specifying both CreatedAfter and LastUpdatedAfter returns an error. 
    # @option opts [String] :created_before A date used for selecting jobs created before (or at) a specified time must be in ISO 8601 format. 
    # @option opts [String] :last_updated_after A date used for selecting jobs updated after (or at) a specified time must be in ISO 8601 format. Required if createdAfter is not specified.Specifying both CreatedAfter and LastUpdatedAfter returns an error. 
    # @option opts [String] :last_updated_before A date used for selecting jobs updated before (or at) a specified time must be in ISO 8601 format. 
    # @option opts [String] :schedule_start_date A date used for filtering jobs schedule after (or at) a specified time must be in ISO 8601 format. schedule end date should not be earlier than schedule start date. 
    # @option opts [String] :schedule_end_date A date used for filtering jobs schedule before (or at) a specified time must be in ISO 8601 format. schedule end date should not be earlier than schedule start date. 
    # @return [Array<(GetServiceJobsResponse, Integer, Hash)>] GetServiceJobsResponse data, response status code and response headers
    def get_service_jobs_with_http_info(marketplace_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.get_service_jobs ...'
      end
      # verify the required parameter 'marketplace_ids' is set
      if @api_client.config.client_side_validation && marketplace_ids.nil?
        fail ArgumentError, "Missing the required parameter 'marketplace_ids' when calling ServiceApi.get_service_jobs"
      end
      if @api_client.config.client_side_validation && opts[:'service_job_status'] && !opts[:'service_job_status'].all? { |item| ['NOT_SERVICED', 'CANCELLED', 'COMPLETED', 'PENDING_SCHEDULE', 'NOT_FULFILLABLE', 'HOLD', 'PAYMENT_DECLINED'].include?(item) }
        fail ArgumentError, 'invalid value for "service_job_status", must include one of NOT_SERVICED, CANCELLED, COMPLETED, PENDING_SCHEDULE, NOT_FULFILLABLE, HOLD, PAYMENT_DECLINED'
      end
      if @api_client.config.client_side_validation && opts[:'sort_field'] && !['JOB_DATE', 'JOB_STATUS'].include?(opts[:'sort_field'])
        fail ArgumentError, 'invalid value for "sort_field", must be one of JOB_DATE, JOB_STATUS'
      end
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !['ASC', 'DESC'].include?(opts[:'sort_order'])
        fail ArgumentError, 'invalid value for "sort_order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = '/service/v1/serviceJobs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'marketplaceIds'] = @api_client.build_collection_param(marketplace_ids, :csv)
      query_params[:'serviceOrderIds'] = @api_client.build_collection_param(opts[:'service_order_ids'], :csv) if !opts[:'service_order_ids'].nil?
      query_params[:'serviceJobStatus'] = @api_client.build_collection_param(opts[:'service_job_status'], :csv) if !opts[:'service_job_status'].nil?
      query_params[:'pageToken'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sortField'] = opts[:'sort_field'] if !opts[:'sort_field'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'createdAfter'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'createdBefore'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'lastUpdatedAfter'] = opts[:'last_updated_after'] if !opts[:'last_updated_after'].nil?
      query_params[:'lastUpdatedBefore'] = opts[:'last_updated_before'] if !opts[:'last_updated_before'].nil?
      query_params[:'scheduleStartDate'] = opts[:'schedule_start_date'] if !opts[:'schedule_start_date'].nil?
      query_params[:'scheduleEndDate'] = opts[:'schedule_end_date'] if !opts[:'schedule_end_date'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetServiceJobsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#get_service_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Reschedules an appointment for the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param body Reschedule appointment operation input details.
    # @param service_job_id An Amazon defined service job identifier.
    # @param appointment_id An existing appointment identifier for the Service Job.
    # @param [Hash] opts the optional parameters
    # @return [SetAppointmentResponse]
    def reschedule_appointment_for_service_job_by_service_job_id(body, service_job_id, appointment_id, opts = {})
      data, _status_code, _headers = reschedule_appointment_for_service_job_by_service_job_id_with_http_info(body, service_job_id, appointment_id, opts)
      data
    end

    # Reschedules an appointment for the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param body Reschedule appointment operation input details.
    # @param service_job_id An Amazon defined service job identifier.
    # @param appointment_id An existing appointment identifier for the Service Job.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SetAppointmentResponse, Integer, Hash)>] SetAppointmentResponse data, response status code and response headers
    def reschedule_appointment_for_service_job_by_service_job_id_with_http_info(body, service_job_id, appointment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.reschedule_appointment_for_service_job_by_service_job_id ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceApi.reschedule_appointment_for_service_job_by_service_job_id"
      end
      # verify the required parameter 'service_job_id' is set
      if @api_client.config.client_side_validation && service_job_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_job_id' when calling ServiceApi.reschedule_appointment_for_service_job_by_service_job_id"
      end
      # verify the required parameter 'appointment_id' is set
      if @api_client.config.client_side_validation && appointment_id.nil?
        fail ArgumentError, "Missing the required parameter 'appointment_id' when calling ServiceApi.reschedule_appointment_for_service_job_by_service_job_id"
      end
      # resource path
      local_var_path = '/service/v1/serviceJobs/{serviceJobId}/appointments/{appointmentId}'.sub('{' + 'serviceJobId' + '}', service_job_id.to_s).sub('{' + 'appointmentId' + '}', appointment_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'SetAppointmentResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#reschedule_appointment_for_service_job_by_service_job_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
