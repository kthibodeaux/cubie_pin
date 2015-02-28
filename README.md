# CubiePin

Control GPIO pins on a [CubieBoard 2](http://cubieboard.org/2013/06/19/cubieboard2-is-here/) running [Cubian](http://cubian.org).

This is a work in progress and may contain bugs and incomplete features.

## Installation

If you do not have Ruby you can install 1.9.3 on Cubian by running:

```bash
sudo apt-get update
sudo apt-get install ruby ruby-dev
```

Add this line to your application's Gemfile:

    gem 'cubie_pin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cubie_pin

## Usage

To enable a pin for output:

```ruby
# :pin and :direction are required, an exception will be raised if they are not
# passed
pin = CubiePin::Pin.new(:pin => 61, :direction => :out)
```

Modify the value:

```ruby
# on and off will raise an exception if called on an input pin
pin.on # Turns the pin on and caches the value as 1
pin.off # Turns the pin off and caches the value as 0
```

Read the current value of the pin:

```ruby
pin.read # Reads the value from the pin and caches it
pin.value # Returns the cached value of the pin
pin.on? # Returns true if the cached value is 1, false otherwise
pin.off? # Returns true if the cached value is 0, false otherwise
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/cubie_pin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
