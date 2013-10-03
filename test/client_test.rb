require_relative './test_helper'

class TestClient < Minitest::Test
  def setup
    @client = Udp2sqsClient::Client.new
  end

  def test_client_returns_true
    @client.configure(host: 'example.com')
    assert @client.send("Hello World")
  end

  def test_client_with_bad_host_returns_false
    @client.configure(host: 'naughty.example.com')
    refute @client.send("Hello World")
  end

  def test_client_with_bad_host_logs_error
    @client.configure(host: 'naughty.example.com')
    assert_output nil, "Udp2sqs failed to send : getaddrinfo: nodename nor servname provided, or not known\n" do
      @client.send("Hello World")
    end
  end
end


