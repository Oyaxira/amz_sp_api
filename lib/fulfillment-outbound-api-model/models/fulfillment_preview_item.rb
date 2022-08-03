=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'

module AmzSpApi::FulfillmentOutboundApiModel
  # Item information for a shipment in a fulfillment order preview.
  class FulfillmentPreviewItem
    # The seller SKU of the item.
    attr_accessor :seller_sku

    attr_accessor :quantity

    # A fulfillment order item identifier that the seller created with a call to the createFulfillmentOrder operation.
    attr_accessor :seller_fulfillment_order_item_id

    attr_accessor :estimated_shipping_weight

    # The method used to calculate the estimated shipping weight.
    attr_accessor :shipping_weight_calculation_method

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'seller_sku' => :'sellerSku',
        :'quantity' => :'quantity',
        :'seller_fulfillment_order_item_id' => :'sellerFulfillmentOrderItemId',
        :'estimated_shipping_weight' => :'estimatedShippingWeight',
        :'shipping_weight_calculation_method' => :'shippingWeightCalculationMethod'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'seller_sku' => :'Object',
        :'quantity' => :'Object',
        :'seller_fulfillment_order_item_id' => :'Object',
        :'estimated_shipping_weight' => :'Object',
        :'shipping_weight_calculation_method' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::FulfillmentOutboundApiModel::FulfillmentPreviewItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::FulfillmentOutboundApiModel::FulfillmentPreviewItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'seller_sku')
        self.seller_sku = attributes[:'seller_sku']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'seller_fulfillment_order_item_id')
        self.seller_fulfillment_order_item_id = attributes[:'seller_fulfillment_order_item_id']
      end

      if attributes.key?(:'estimated_shipping_weight')
        self.estimated_shipping_weight = attributes[:'estimated_shipping_weight']
      end

      if attributes.key?(:'shipping_weight_calculation_method')
        self.shipping_weight_calculation_method = attributes[:'shipping_weight_calculation_method']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @seller_sku.nil?
        invalid_properties.push('invalid value for "seller_sku", seller_sku cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @seller_fulfillment_order_item_id.nil?
        invalid_properties.push('invalid value for "seller_fulfillment_order_item_id", seller_fulfillment_order_item_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @seller_sku.nil?
      return false if @quantity.nil?
      return false if @seller_fulfillment_order_item_id.nil?
      shipping_weight_calculation_method_validator = EnumAttributeValidator.new('Object', ['Package', 'Dimensional'])
      return false unless shipping_weight_calculation_method_validator.valid?(@shipping_weight_calculation_method)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_weight_calculation_method Object to be assigned
    def shipping_weight_calculation_method=(shipping_weight_calculation_method)
      validator = EnumAttributeValidator.new('Object', ['Package', 'Dimensional'])
      unless validator.valid?(shipping_weight_calculation_method)
        fail ArgumentError, "invalid value for \"shipping_weight_calculation_method\", must be one of #{validator.allowable_values}."
      end
      @shipping_weight_calculation_method = shipping_weight_calculation_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          seller_sku == o.seller_sku &&
          quantity == o.quantity &&
          seller_fulfillment_order_item_id == o.seller_fulfillment_order_item_id &&
          estimated_shipping_weight == o.estimated_shipping_weight &&
          shipping_weight_calculation_method == o.shipping_weight_calculation_method
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [seller_sku, quantity, seller_fulfillment_order_item_id, estimated_shipping_weight, shipping_weight_calculation_method].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        AmzSpApi::FulfillmentOutboundApiModel.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
