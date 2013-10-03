# udp2sqs-client

Client for the udp2sqs-server.  See also [udp2sqs-server](https://github.com/meducation/udp2sqs-server)

[![Build Status](https://travis-ci.org/meducation/udp2sqs-client.png)](https://travis-ci.org/meducation/udp2sqs-client)
[![Dependencies](https://gemnasium.com/meducation/udp2sqs-client.png?travis)](https://gemnasium.com/meducation/udp2sqs-client)
[![Code Climate](https://codeclimate.com/github/meducation/udp2sqs-client.png)](https://codeclimate.com/github/meducation/udp2sqs-client)
[![Coverage Status](https://coveralls.io/repos/meducation/udp2sqs-client/badge.png)](https://coveralls.io/r/meducation/udp2sqs-client)


## Installation

Add this line to your application's Gemfile:

    gem 'udp2sqs-client'

If you want to use the latest version from Github, you can do:

    gem 'udp2sqs-client', github: "meducation/udp2sqs-client"

And then execute:

    $ bundle

In your code you can then send messages by:

```
client = Udp2sqsClient::Client.new(host, port)
client.send_message("Some message")
```

## Contributing

Firstly, thank you!! :heart::sparkling_heart::heart:

Please read our [contributing guide](https://github.com/meducation/udp2sqs-client/tree/master/CONTRIBUTING.md) for information on how to get stuck in.

## Licence

Copyright (C) 2013 New Media Education Ltd

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

A copy of the GNU Affero General Public License is available in [Licence.md](https://github.com/meducation/udp2sqs-client/blob/master/LICENCE.md)
along with this program.  If not, see <http://www.gnu.org/licenses/>.
