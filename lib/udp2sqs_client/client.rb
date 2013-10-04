require 'socket'

module Udp2sqsClient

  class Client

    def initialize
      @host, @port = "localhost", 9732
    end

    def configure(host: "localhost", port: 9732)
      @host, @port = host, port
    end

    def send(message)
      begin
        s = UDPSocket.new
        bytes_sent = s.send(message, 0, @host, @port)
        bytes_sent == message.bytesize
      rescue SocketError => e
        $stderr.puts "Udp2sqs failed to send : #{e}"
        false
      end
    end

  end

end
