require_relative '../test/test_helper'

session_id = ARGV[0]

client = Udp2sqsClient::Client.new(host: 'localhost')
assert client.send_message("{\"action\" : \"pageview\", \"time\" : \"\", \"payload\" : { \"session_id\" : \"#{session_id}\", \"user_id\" : null, \"premium\" : false } }")
