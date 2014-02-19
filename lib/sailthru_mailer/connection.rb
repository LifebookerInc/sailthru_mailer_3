module SailthruMailer
  class Connection
    def initialize
      @client = Sailthru::SailthruClient.new(
        SailthruMailer.settings[:api_key],
        SailthruMailer.settings[:api_secret],
        SailthruMailer.settings[:api_url]
      )
    end
    
    # 
    # Alias send_email as deliver
    # @param  *args [Array<Mixed>] 
    # 
    # @return [Hash] Response
    def deliver(*args)
      @client.send_email(*args)
    end
    # proxy all methods to @client
    def method_missing(m, *args, &block)
      @client.__send__(m, *args, &block)
    end
  end
end