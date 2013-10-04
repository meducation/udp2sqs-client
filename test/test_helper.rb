gem "minitest"
require "minitest/autorun"
require "minitest/pride"
require "minitest/mock"
require "minitest/stub_any_instance"
require 'coveralls'
Coveralls.wear!

require_relative "../lib/udp2sqs_client"
