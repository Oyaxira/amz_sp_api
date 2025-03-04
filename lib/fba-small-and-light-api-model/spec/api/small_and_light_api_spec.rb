=begin
#Selling Partner API for FBA Small And Light

#The Selling Partner API for FBA Small and Light lets you help sellers manage their listings in the Small and Light program. The program reduces the cost of fulfilling orders for small and lightweight FBA inventory. You can enroll or remove items from the program and check item eligibility and enrollment status. You can also preview the estimated program fees charged to a seller for items sold while enrolled in the program.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SmallAndLightApi' do
  before do
    # run before each test
    @instance = AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SmallAndLightApi' do
    it 'should create an instance of SmallAndLightApi' do
      expect(@instance).to be_instance_of(AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightApi)
    end
  end

  # unit tests for delete_small_and_light_enrollment_by_seller_sku
  # Removes the item indicated by the specified seller SKU from the Small and Light program in the specified marketplace. If the item is not eligible for disenrollment, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param seller_sku The seller SKU that identifies the item.
  # @param marketplace_ids The marketplace in which to remove the item from the Small and Light program. Note: Accepts a single marketplace only.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_small_and_light_enrollment_by_seller_sku test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_small_and_light_eligibility_by_seller_sku
  # Returns the Small and Light program eligibility status of the item indicated by the specified seller SKU in the specified marketplace. If the item is not eligible, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 10 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param seller_sku The seller SKU that identifies the item.
  # @param marketplace_ids The marketplace for which the eligibility status is retrieved. NOTE: Accepts a single marketplace only.
  # @param [Hash] opts the optional parameters
  # @return [SmallAndLightEligibility]
  describe 'get_small_and_light_eligibility_by_seller_sku test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_small_and_light_enrollment_by_seller_sku
  # Returns the Small and Light enrollment status for the item indicated by the specified seller SKU in the specified marketplace.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 10 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param seller_sku The seller SKU that identifies the item.
  # @param marketplace_ids The marketplace for which the enrollment status is retrieved. Note: Accepts a single marketplace only.
  # @param [Hash] opts the optional parameters
  # @return [SmallAndLightEnrollment]
  describe 'get_small_and_light_enrollment_by_seller_sku test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_small_and_light_fee_preview
  # Returns the Small and Light fee estimates for the specified items. You must include a marketplaceId parameter to retrieve the proper fee estimates for items to be sold in that marketplace. The ordering of items in the response will mirror the order of the items in the request. Duplicate ASIN/price combinations are removed.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 3 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [SmallAndLightFeePreviews]
  describe 'get_small_and_light_fee_preview test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_small_and_light_enrollment_by_seller_sku
  # Enrolls the item indicated by the specified seller SKU in the Small and Light program in the specified marketplace. If the item is not eligible, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param seller_sku The seller SKU that identifies the item.
  # @param marketplace_ids The marketplace in which to enroll the item. Note: Accepts a single marketplace only.
  # @param [Hash] opts the optional parameters
  # @return [SmallAndLightEnrollment]
  describe 'put_small_and_light_enrollment_by_seller_sku test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
