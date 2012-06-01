# Dibs

DIBS payment API wrapper for Ruby. For now it supports only [`authorize`](http://tech.dibs.dk/dibs_api/payment_functions/authcgi/) and
 [`capture`](http://tech.dibs.dk/dibs_api/payment_functions/capturecgi/) calls.

## Installation

Add this line to your application's Gemfile:

    gem 'dibs'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install dibs

## Usage

1. Obtain merchant id, key1 and key2 from http://www.dibs.dk/
2. Initialize DIBS class:

    `@dibs = ::Dibs::Dibs.new(merchant,key1,key2)`

3. Construct a hash of required parameters:
    ```
    parameters = {
        :amount=>10000, # 100 
        :currency=>208, # DDK
        :cardno=>'5019100000000000', 
        :expmon=>'06', 
        :expyear=>'24', 
        :cvc=>'684', 
        :orderId=>"abc_test_#{Time.now.to_s.gsub(/\s/, '_')}", # HAS TO BE UNIQUE
        :test=>true # DO AS YOU WANT
      }
    ```

4. call `authorize` method and pass in parameters

	`@dibs.authorize(parameters)`

5. And you're done :)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## TODO

1. Cleanup
2. Rest of API methods
3. Better error handling?


