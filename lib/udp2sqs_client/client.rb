require 'socket'

module Udp2sqsClient

  class Client

    attr_reader :host, :port

    def initialize(options = {})
      @host = options.fetch(:host, "localhost")
      @port = options.fetch(:post, 9732)
    end

    def send(message)
      begin
        s = UDPSocket.new
        bytes_sent = s.send(message, 0, host, port)
        bytes_sent == message.bytesize
      rescue SocketError => e
        $stderr.puts "Udp2sqs failed to send : #{e}"
        false
      end
    end
  end
end
