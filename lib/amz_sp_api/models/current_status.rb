=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'date'

module AmzSpApi
  class CurrentStatus
    IN_TRANSIT = 'IN_TRANSIT'.freeze
    DELIVERED = 'DELIVERED'.freeze
    RETURNING = 'RETURNING'.freeze
    RETURNED = 'RETURNED'.freeze
    UNDELIVERABLE = 'UNDELIVERABLE'.freeze
    DELAYED = 'DELAYED'.freeze
    AVAILABLE_FOR_PICKUP = 'AVAILABLE_FOR_PICKUP'.freeze
    CUSTOMER_ACTION = 'CUSTOMER_ACTION'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CurrentStatus.constants.select { |c| CurrentStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CurrentStatus" if constantValues.empty?
      value
    end
  end
end
