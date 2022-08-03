=begin
#Selling Partner API for Shipping

#Provides programmatic access to Amazon Shipping APIs.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

# Common files
require 'shipping-api-model/api_client'
require 'shipping-api-model/api_error'
require 'shipping-api-model/version'
require 'shipping-api-model/configuration'

# Models
require 'shipping-api-model/models/accepted_rate'
require 'shipping-api-model/models/account'
require 'shipping-api-model/models/account_id'
require 'shipping-api-model/models/address'
require 'shipping-api-model/models/cancel_shipment_response'
require 'shipping-api-model/models/city'
require 'shipping-api-model/models/client_reference_id'
require 'shipping-api-model/models/container'
require 'shipping-api-model/models/container_item'
require 'shipping-api-model/models/container_list'
require 'shipping-api-model/models/container_reference_id'
require 'shipping-api-model/models/container_specification'
require 'shipping-api-model/models/container_specification_list'
require 'shipping-api-model/models/country_code'
require 'shipping-api-model/models/create_shipment_request'
require 'shipping-api-model/models/create_shipment_response'
require 'shipping-api-model/models/create_shipment_result'
require 'shipping-api-model/models/currency'
require 'shipping-api-model/models/dimensions'
require 'shipping-api-model/models/error'
require 'shipping-api-model/models/error_list'
require 'shipping-api-model/models/event'
require 'shipping-api-model/models/event_code'
require 'shipping-api-model/models/event_list'
require 'shipping-api-model/models/get_account_response'
require 'shipping-api-model/models/get_rates_request'
require 'shipping-api-model/models/get_rates_response'
require 'shipping-api-model/models/get_rates_result'
require 'shipping-api-model/models/get_shipment_response'
require 'shipping-api-model/models/get_tracking_information_response'
require 'shipping-api-model/models/label'
require 'shipping-api-model/models/label_result'
require 'shipping-api-model/models/label_result_list'
require 'shipping-api-model/models/label_specification'
require 'shipping-api-model/models/label_stream'
require 'shipping-api-model/models/location'
require 'shipping-api-model/models/party'
require 'shipping-api-model/models/postal_code'
require 'shipping-api-model/models/promised_delivery_date'
require 'shipping-api-model/models/purchase_labels_request'
require 'shipping-api-model/models/purchase_labels_response'
require 'shipping-api-model/models/purchase_labels_result'
require 'shipping-api-model/models/purchase_shipment_request'
require 'shipping-api-model/models/purchase_shipment_response'
require 'shipping-api-model/models/purchase_shipment_result'
require 'shipping-api-model/models/rate'
require 'shipping-api-model/models/rate_id'
require 'shipping-api-model/models/rate_list'
require 'shipping-api-model/models/retrieve_shipping_label_request'
require 'shipping-api-model/models/retrieve_shipping_label_response'
require 'shipping-api-model/models/retrieve_shipping_label_result'
require 'shipping-api-model/models/service_rate'
require 'shipping-api-model/models/service_rate_list'
require 'shipping-api-model/models/service_type'
require 'shipping-api-model/models/service_type_list'
require 'shipping-api-model/models/shipment'
require 'shipping-api-model/models/shipment_id'
require 'shipping-api-model/models/shipping_promise_set'
require 'shipping-api-model/models/state_or_region'
require 'shipping-api-model/models/time_range'
require 'shipping-api-model/models/tracking_id'
require 'shipping-api-model/models/tracking_information'
require 'shipping-api-model/models/tracking_summary'
require 'shipping-api-model/models/weight'

# APIs
require 'shipping-api-model/api/shipping_api'

module AmzSpApi::ShippingApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::ShippingApiModel.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
