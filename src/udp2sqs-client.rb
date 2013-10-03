require 'socket'

module Udp2sqs

  class Client

    def initialize
      @host, @port = "localhost", 9732
    end

    def configure(host: "localhost", port: 9732)
      @host, @port = host, port
    end

    def send(message)
      s = UDPSocket.new
      bytes_sent = s.send(message, 0, @host, @port)
      return bytes_sent == message.bytesize
    end

  end

end
