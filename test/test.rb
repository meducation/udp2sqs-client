#!/usr/bin/env ruby

require '../src/udp2sqs-client.rb'

client = Udp2sqs::Client.new
client.configure(host: 'events.dev.meducation.net')

client.send("Hello World")
