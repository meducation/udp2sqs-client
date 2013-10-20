require_relative '../lib/udp2sqs_client/client.rb'
topic = ARGV[0]
session_id = ARGV[1]

client = Udp2sqsClient::Client.new(host: 'localhost')
client.send_message("{\"topic\" : \"#{topic}\", \"message\" : {\"action\" : \"pageview\", \"time\" : \"\", \"payload\" : { \"session_id\" : \"#{session_id}\", \"user_id\" : null, \"premium\" : false } } }")
