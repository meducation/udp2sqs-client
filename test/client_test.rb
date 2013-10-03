require_relative './test_helper'

class TestClient < Minitest::Test
  def setup
    @client = Udp2sqsClient::Client.new
    @client.configure(host: 'events.dev.meducation.net')
  end

  def test_client_returns_true
    assert @client.send("Hello World")
  end
end


