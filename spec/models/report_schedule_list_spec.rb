=begin
#Selling Partner API for Reports

#The Selling Partner API for Reports lets you retrieve and manage a variety of reports that can help selling partners manage their businesses.

OpenAPI spec version: 2020-09-04

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::ReportScheduleList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportScheduleList' do
  before do
    # run before each test
    @instance = AmzSpApi::ReportScheduleList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportScheduleList' do
    it 'should create an instance of ReportScheduleList' do
      expect(@instance).to be_instance_of(AmzSpApi::ReportScheduleList)
    end
  end
end
