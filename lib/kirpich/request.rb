module Kirpich
  class Request
    include Virtus.model

    attribute :subtype, String
    attribute :type, String
    attribute :user, String
    attribute :text, String
    attribute :channel, String
    attribute :ts, String

    def bot_message?
      subtype == 'bot_message'
    end

    def changed_message?
      subtype == 'message_changed'
    end

    def to_s
      "Recived [#{text}] From [#{user}]"
    end
  end
end
