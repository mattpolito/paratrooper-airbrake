# Paratrooper - Airbrake Notifier

[![Gem Version](https://badge.fury.io/rb/paratrooper-airbrake.png)](http://badge.fury.io/rb/paratrooper-airbrake)

Notify [Airbrake][] of your deployments when using [Paratrooper][]

## Installation

Add this line to your application's Gemfile:

    gem 'paratrooper-airbrake'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paratrooper-airbrake

## Usage

When initializing `Paratrooper::Deploy` a `notifiers` option can be passed

```ruby
Paratrooper::Deploy.new('app_name',
  notifiers: [Paratrooper::Airbrake::Notifier.new]
)
```

This will notify Airbrake that a deploy has happened after a successful
Paratrooper deployment

For more information on `notifiers`, see [Paratrooper][] documentation.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks

* [Brandon Farmer][]

[Airbrake]: http://airbrake.io
[Paratrooper]: https://github.com/mattpolito/paratrooper
[Brandon Farmer]: https://github.com/bthesorceror
