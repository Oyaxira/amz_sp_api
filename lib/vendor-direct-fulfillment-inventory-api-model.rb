=begin
#Selling Partner API for Direct Fulfillment Inventory Updates

#The Selling Partner API for Direct Fulfillment Inventory Updates provides programmatic access to a direct fulfillment vendor's inventory updates.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

# Common files
require 'vendor-direct-fulfillment-inventory-api-model/api_client'
require 'vendor-direct-fulfillment-inventory-api-model/api_error'
require 'vendor-direct-fulfillment-inventory-api-model/version'
require 'vendor-direct-fulfillment-inventory-api-model/configuration'

# Models
require 'vendor-direct-fulfillment-inventory-api-model/models/error'
require 'vendor-direct-fulfillment-inventory-api-model/models/error_list'
require 'vendor-direct-fulfillment-inventory-api-model/models/inventory_update'
require 'vendor-direct-fulfillment-inventory-api-model/models/item_details'
require 'vendor-direct-fulfillment-inventory-api-model/models/item_quantity'
require 'vendor-direct-fulfillment-inventory-api-model/models/party_identification'
require 'vendor-direct-fulfillment-inventory-api-model/models/submit_inventory_update_request'
require 'vendor-direct-fulfillment-inventory-api-model/models/submit_inventory_update_response'
require 'vendor-direct-fulfillment-inventory-api-model/models/transaction_reference'

# APIs
require 'vendor-direct-fulfillment-inventory-api-model/api/update_inventory_api'

module AmzSpApi::VendorDirectFulfillmentInventoryApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::VendorDirectFulfillmentInventoryApiModel.configure do |config|
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
