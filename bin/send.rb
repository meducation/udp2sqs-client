require_relative '../lib/udp2sqs_client/client.rb'
session_id = ARGV[0]

client = Udp2sqsClient::Client.new(host: 'localhost')
client.send_message("{\"action\" : \"pageview\", \"time\" : \"\", \"payload\" : { \"session_id\" : \"#{session_id}\", \"user_id\" : null, \"premium\" : false } }")
