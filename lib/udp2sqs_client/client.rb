require 'socket'

module Udp2sqsClient
  class Client

    attr_reader :host, :port

    def initialize(options = {})
      @host = options.fetch(:host, "localhost")
      @port = options.fetch(:post, 9732)
    end

    def send_message(message)
      begin
        bytes_sent = socket.send(message, 0, host, port)
        bytes_sent == message.bytesize
      rescue SocketError => e
        $stderr.puts "Udp2sqs failed to send : #{e}"
        false
      end
    end

    private

    def socket
      @socket ||= UDPSocket.new
    end
  end
end
