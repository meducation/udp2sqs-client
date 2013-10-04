require_relative './test_helper'

class TestClient < Minitest::Test
  def test_defaults
    client = Udp2sqsClient::Client.new
    assert_equal "localhost", client.host
    assert_equal 9732, client.port
  end

  def test_client_returns_true
    client = Udp2sqsClient::Client.new(host: 'example.com')
    assert client.send_message("Hello World")
  end

  def test_client_returns_false_if_bytes_are_different
    client = Udp2sqsClient::Client.new(host: 'example.com')
    UDPSocket.stub_any_instance(:send, 89) do 
      refute client.send_message("Hello World")
    end
  end

  def test_client_with_bad_host_returns_false
    client = Udp2sqsClient::Client.new(host: 'naughty.example.com')
    refute client.send_message("Hello World")
  end

  def test_client_with_bad_host_logs_error
    client = Udp2sqsClient::Client.new(host: 'naughty.example.com')
    assert_output nil, "Udp2sqs failed to send : getaddrinfo: nodename nor servname provided, or not known\n" do
      client.send_message("Hello World")
    end
  end
end
