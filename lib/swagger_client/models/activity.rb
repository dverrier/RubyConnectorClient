=begin
#Microsoft Bot Connector API - v3.0

#﻿The Bot Connector REST API allows your bot to send and receive messages to channels configured in the  [Bot Framework Developer Portal](https://dev.botframework.com). The Connector service uses industry-standard REST  and JSON over HTTPS.    Client libraries for this REST API are available. See below for a list.    Many bots will use both the Bot Connector REST API and the associated [Bot State REST API](/en-us/restapi/state). The  Bot State REST API allows a bot to store and retrieve state associated with users and conversations.    Authentication for both the Bot Connector and Bot State REST APIs is accomplished with JWT Bearer tokens, and is  described in detail in the [Connector Authentication](/en-us/restapi/authentication) document.    # Client Libraries for the Bot Connector REST API    * [Bot Builder for C#](/en-us/csharp/builder/sdkreference/)  * [Bot Builder for Node.js](/en-us/node/builder/overview/)  * Generate your own from the [Connector API Swagger file](https://raw.githubusercontent.com/Microsoft/BotBuilder/master/CSharp/Library/Microsoft.Bot.Connector/Swagger/ConnectorAPI.json)    © 2016 Microsoft

OpenAPI spec version: v3
Contact: botframework@microsoft.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module SwaggerClient

  class Activity
    # The type of the activity [message|contactRelationUpdate|converationUpdate|typing]
    attr_accessor :type

    # Id for the activity
    attr_accessor :id

    # Time when message was sent
    attr_accessor :timestamp

    # Service endpoint
    attr_accessor :service_url

    # ChannelId the activity was on
    attr_accessor :channel_id

    # Sender address
    attr_accessor :from

    # Conversation
    attr_accessor :conversation

    # (Outbound to bot only) Bot's address that received the message
    attr_accessor :recipient

    # Format of text fields [plain|markdown] Default:markdown
    attr_accessor :text_format

    # AttachmentLayout - hint for how to deal with multiple attachments Values: [list|carousel] Default:list
    attr_accessor :attachment_layout

    # Array of address added
    attr_accessor :members_added

    # Array of addresses removed
    attr_accessor :members_removed

    # Conversations new topic name
    attr_accessor :topic_name

    # the previous history of the channel was disclosed
    attr_accessor :history_disclosed

    # The language code of the Text field
    attr_accessor :locale

    # Content for the message
    attr_accessor :text

    # Text to display if you can't render cards
    attr_accessor :summary

    # Attachments
    attr_accessor :attachments

    # Collection of Entity objects, each of which contains metadata about this activity. Each Entity object is typed.
    attr_accessor :entities

    # Channel specific payload
    attr_accessor :channel_data

    # ContactAdded/Removed action
    attr_accessor :action

    # the original id this message is a response to
    attr_accessor :reply_to_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'id' => :'id',
        :'timestamp' => :'timestamp',
        :'service_url' => :'serviceUrl',
        :'channel_id' => :'channelId',
        :'from' => :'from',
        :'conversation' => :'conversation',
        :'recipient' => :'recipient',
        :'text_format' => :'textFormat',
        :'attachment_layout' => :'attachmentLayout',
        :'members_added' => :'membersAdded',
        :'members_removed' => :'membersRemoved',
        :'topic_name' => :'topicName',
        :'history_disclosed' => :'historyDisclosed',
        :'locale' => :'locale',
        :'text' => :'text',
        :'summary' => :'summary',
        :'attachments' => :'attachments',
        :'entities' => :'entities',
        :'channel_data' => :'channelData',
        :'action' => :'action',
        :'reply_to_id' => :'replyToId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'id' => :'String',
        :'timestamp' => :'DateTime',
        :'service_url' => :'String',
        :'channel_id' => :'String',
        :'from' => :'ChannelAccount',
        :'conversation' => :'ConversationAccount',
        :'recipient' => :'ChannelAccount',
        :'text_format' => :'String',
        :'attachment_layout' => :'String',
        :'members_added' => :'Array<ChannelAccount>',
        :'members_removed' => :'Array<ChannelAccount>',
        :'topic_name' => :'String',
        :'history_disclosed' => :'BOOLEAN',
        :'locale' => :'String',
        :'text' => :'String',
        :'summary' => :'String',
        :'attachments' => :'Array<Attachment>',
        :'entities' => :'Array<Entity>',
        :'channel_data' => :'Object',
        :'action' => :'String',
        :'reply_to_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'serviceUrl')
        self.service_url = attributes[:'serviceUrl']
      end

      if attributes.has_key?(:'channelId')
        self.channel_id = attributes[:'channelId']
      end

      if attributes.has_key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.has_key?(:'conversation')
        self.conversation = attributes[:'conversation']
      end

      if attributes.has_key?(:'recipient')
        self.recipient = attributes[:'recipient']
      end

      if attributes.has_key?(:'textFormat')
        self.text_format = attributes[:'textFormat']
      end

      if attributes.has_key?(:'attachmentLayout')
        self.attachment_layout = attributes[:'attachmentLayout']
      end

      if attributes.has_key?(:'membersAdded')
        if (value = attributes[:'membersAdded']).is_a?(Array)
          self.members_added = value
        end
      end

      if attributes.has_key?(:'membersRemoved')
        if (value = attributes[:'membersRemoved']).is_a?(Array)
          self.members_removed = value
        end
      end

      if attributes.has_key?(:'topicName')
        self.topic_name = attributes[:'topicName']
      end

      if attributes.has_key?(:'historyDisclosed')
        self.history_disclosed = attributes[:'historyDisclosed']
      end

      if attributes.has_key?(:'locale')
        self.locale = attributes[:'locale']
      end

      if attributes.has_key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.has_key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.has_key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.has_key?(:'entities')
        if (value = attributes[:'entities']).is_a?(Array)
          self.entities = value
        end
      end

      if attributes.has_key?(:'channelData')
        self.channel_data = attributes[:'channelData']
      end

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.has_key?(:'replyToId')
        self.reply_to_id = attributes[:'replyToId']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          id == o.id &&
          timestamp == o.timestamp &&
          service_url == o.service_url &&
          channel_id == o.channel_id &&
          from == o.from &&
          conversation == o.conversation &&
          recipient == o.recipient &&
          text_format == o.text_format &&
          attachment_layout == o.attachment_layout &&
          members_added == o.members_added &&
          members_removed == o.members_removed &&
          topic_name == o.topic_name &&
          history_disclosed == o.history_disclosed &&
          locale == o.locale &&
          text == o.text &&
          summary == o.summary &&
          attachments == o.attachments &&
          entities == o.entities &&
          channel_data == o.channel_data &&
          action == o.action &&
          reply_to_id == o.reply_to_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, id, timestamp, service_url, channel_id, from, conversation, recipient, text_format, attachment_layout, members_added, members_removed, topic_name, history_disclosed, locale, text, summary, attachments, entities, channel_data, action, reply_to_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
