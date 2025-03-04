=begin
#Selling Partner API for Feeds

#The Selling Partner API for Feeds lets you upload data to Amazon on behalf of a selling partner.

OpenAPI spec version: 2020-09-04

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::FeedsApiModel::FeedDocumentEncryptionDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeedDocumentEncryptionDetails' do
  before do
    # run before each test
    @instance = AmzSpApi::FeedsApiModel::FeedDocumentEncryptionDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeedDocumentEncryptionDetails' do
    it 'should create an instance of FeedDocumentEncryptionDetails' do
      expect(@instance).to be_instance_of(AmzSpApi::FeedsApiModel::FeedDocumentEncryptionDetails)
    end
  end
  describe 'test attribute "standard"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["AES"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.standard = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "initialization_vector"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
