=begin
#Selling Partner API for Sales

#The Selling Partner API for Sales provides APIs related to sales performance.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::SalesApiModel::GetOrderMetricsResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetOrderMetricsResponse' do
  before do
    # run before each test
    @instance = AmzSpApi::SalesApiModel::GetOrderMetricsResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetOrderMetricsResponse' do
    it 'should create an instance of GetOrderMetricsResponse' do
      expect(@instance).to be_instance_of(AmzSpApi::SalesApiModel::GetOrderMetricsResponse)
    end
  end
  describe 'test attribute "payload"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "errors"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
