module GovukMessageQueueConsumer
  class MockMessage < Message
    attr_reader :acked, :retried, :discarded

    alias :acked? :acked
    alias :discarded? :discarded
    alias :retried? :retried

    def initialize(delivery_info = {}, payload = {}, options = {})
      @delivery_info = OpenStruct.new(delivery_info)
      @payload = payload
      @headers = OpenStruct.new(options[:headers])
    end

    def ack
      @acked = true
    end

    def retry
      @retried = true
    end

    def discard
      @discarded = true
    end
  end
end
