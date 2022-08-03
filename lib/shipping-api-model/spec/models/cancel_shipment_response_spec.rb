=begin
#Selling Partner API for Shipping

#Provides programmatic access to Amazon Shipping APIs.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::ShippingApiModel::CancelShipmentResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CancelShipmentResponse' do
  before do
    # run before each test
    @instance = AmzSpApi::ShippingApiModel::CancelShipmentResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CancelShipmentResponse' do
    it 'should create an instance of CancelShipmentResponse' do
      expect(@instance).to be_instance_of(AmzSpApi::ShippingApiModel::CancelShipmentResponse)
    end
  end
  describe 'test attribute "errors"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
