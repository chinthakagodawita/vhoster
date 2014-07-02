# Vhoster

Command-line utility to help setup and manage virtualhosts for Apache on OS X. In the interest of full disclosure, this draws a fair bit of inspiration from [VirtualHostX](https://clickontyler.com/virtualhostx/) :).

## Requirements
This has only been tested on ruby 2.x, use on 1.9.x at your own peril. It's also only been tested on OS X 10.9 (Mavericks), it may/not work on older versions and other UNIX OSes.

## Installation

Add this line to your application's Gemfile:

    gem 'vhoster'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vhoster

## Usage

To setup Apache to use virtualhosts (if you haven't already), run:

    vhoster init



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/my-new-feature`)
5. Create new Pull Request
