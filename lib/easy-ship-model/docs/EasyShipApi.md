# AmzSpApi::EasyShipModel::EasyShipApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_scheduled_package**](EasyShipApi.md#create_scheduled_package) | **POST** /easyShip/2022-03-23/package | 
[**get_scheduled_package**](EasyShipApi.md#get_scheduled_package) | **GET** /easyShip/2022-03-23/package | 
[**list_handover_slots**](EasyShipApi.md#list_handover_slots) | **POST** /easyShip/2022-03-23/timeSlot | 
[**update_scheduled_packages**](EasyShipApi.md#update_scheduled_packages) | **PATCH** /easyShip/2022-03-23/package | 

# **create_scheduled_package**
> Package create_scheduled_package(body)



Schedules an Easy Ship order and returns the scheduled package information.  This operation does the following:  *  Specifies the time slot and handover method for the order to be scheduled for delivery.  * Updates the Easy Ship order status.  * Generates a shipping label and an invoice. Calling `createScheduledPackage` also generates a warranty document if you specify a `SerialNumber` value. To get these documents, see [How to get invoice, shipping label, and warranty documents](doc:easy-ship-api-v2022-03-23-use-case-guide).  * Shows the status of Easy Ship orders when you call the `getOrders` operation of the Selling Partner API for Orders and examine the `EasyShipShipmentStatus` property in the response body.  See the **Shipping Label**, **Invoice**, and **Warranty** columns in the [Marketplace Support Table](doc:easy-ship-api-v2022-03-23-use-case-guide) to see which documents are supported in each marketplace.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'easy-ship-model'

api_instance = AmzSpApi::EasyShipModel::EasyShipApi.new
body = AmzSpApi::EasyShipModel::CreateScheduledPackageRequest.new # CreateScheduledPackageRequest | 


begin
  result = api_instance.create_scheduled_package(body)
  p result
rescue AmzSpApi::EasyShipModel::ApiError => e
  puts "Exception when calling EasyShipApi->create_scheduled_package: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateScheduledPackageRequest**](CreateScheduledPackageRequest.md)|  | 

### Return type

[**Package**](Package.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_scheduled_package**
> Package get_scheduled_package(amazon_order_id, marketplace_id)



Returns information about a package, including dimensions, weight, time slot information for handover, invoice and item information, and status.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'easy-ship-model'

api_instance = AmzSpApi::EasyShipModel::EasyShipApi.new
amazon_order_id = 'amazon_order_id_example' # String | An Amazon-defined order identifier. Identifies the order that the seller wants to deliver using Amazon Easy Ship.
marketplace_id = 'marketplace_id_example' # String | An identifier for the marketplace in which the seller is selling.


begin
  result = api_instance.get_scheduled_package(amazon_order_id, marketplace_id)
  p result
rescue AmzSpApi::EasyShipModel::ApiError => e
  puts "Exception when calling EasyShipApi->get_scheduled_package: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amazon_order_id** | **String**| An Amazon-defined order identifier. Identifies the order that the seller wants to deliver using Amazon Easy Ship. | 
 **marketplace_id** | **String**| An identifier for the marketplace in which the seller is selling. | 

### Return type

[**Package**](Package.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_handover_slots**
> ListHandoverSlotsResponse list_handover_slots(opts)



Returns time slots available for Easy Ship orders to be scheduled based on the package weight and dimensions that the seller specifies.  This operation is available for scheduled and unscheduled orders based on marketplace support. See **Get Time Slots** in the [Marketplace Support Table](doc:easy-ship-api-v2022-03-23-use-case-guide).  This operation can return time slots that have either pickup or drop-off handover methods - see **Supported Handover Methods** in the [Marketplace Support Table](doc:easy-ship-api-v2022-03-23-use-case-guide).  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'easy-ship-model'

api_instance = AmzSpApi::EasyShipModel::EasyShipApi.new
opts = { 
  body: AmzSpApi::EasyShipModel::ListHandoverSlotsRequest.new # ListHandoverSlotsRequest | 
}

begin
  result = api_instance.list_handover_slots(opts)
  p result
rescue AmzSpApi::EasyShipModel::ApiError => e
  puts "Exception when calling EasyShipApi->list_handover_slots: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListHandoverSlotsRequest**](ListHandoverSlotsRequest.md)|  | [optional] 

### Return type

[**ListHandoverSlotsResponse**](ListHandoverSlotsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_scheduled_packages**
> Packages update_scheduled_packages(opts)



Updates the time slot for handing over the package indicated by the specified `scheduledPackageId`. You can get the new `slotId` value for the time slot by calling the `listHandoverSlots` operation before making another `patch` call.  See the **Update Package** column in the [Marketplace Support Table](doc:easy-ship-api-v2022-03-23-use-case-guide) to see which marketplaces this operation is supported in.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'easy-ship-model'

api_instance = AmzSpApi::EasyShipModel::EasyShipApi.new
opts = { 
  body: AmzSpApi::EasyShipModel::UpdateScheduledPackagesRequest.new # UpdateScheduledPackagesRequest | 
}

begin
  result = api_instance.update_scheduled_packages(opts)
  p result
rescue AmzSpApi::EasyShipModel::ApiError => e
  puts "Exception when calling EasyShipApi->update_scheduled_packages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateScheduledPackagesRequest**](UpdateScheduledPackagesRequest.md)|  | [optional] 

### Return type

[**Packages**](Packages.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



