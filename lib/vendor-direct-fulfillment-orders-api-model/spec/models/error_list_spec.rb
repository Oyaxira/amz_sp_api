=begin
#Selling Partner API for Direct Fulfillment Orders

#The Selling Partner API for Direct Fulfillment Orders provides programmatic access to a direct fulfillment vendor's order data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorDirectFulfillmentOrdersApiModel::ErrorList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ErrorList' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentOrdersApiModel::ErrorList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ErrorList' do
    it 'should create an instance of ErrorList' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentOrdersApiModel::ErrorList)
    end
  end
end
