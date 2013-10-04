require_relative './test_helper'

class TestClient < Minitest::Test
  def test_defaults
    client = Udp2sqsClient::Client.new
    assert_equal "localhost", client.host
    assert_equal 9732, client.port
  end

  def test_client_returns_true
    client = Udp2sqsClient::Client.new(host: 'example.com')
    assert client.send("Hello World")
  end

  def test_client_with_bad_host_returns_false
    client = Udp2sqsClient::Client.new(host: 'naughty.example.com')
    refute client.send("Hello World")
  end

  def test_client_with_bad_host_logs_error
    client = Udp2sqsClient::Client.new(host: 'naughty.example.com')
    assert_output nil, "Udp2sqs failed to send : getaddrinfo: nodename nor servname provided, or not known\n" do
      client.send("Hello World")
    end
  end
end


