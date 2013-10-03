#require "minitest/autorun"
#require "udp2sqs_client"

class TestClient < Minitest::Test
  def setup
    @client = Udp2sqsClient::Client.new
    @client.configure(host: 'events.dev.meducation.net')
  end

  def test_client_sends_helloworld
    @client.send("Hello World")
  end
end


