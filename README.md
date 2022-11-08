[![Ruby](https://github.com/kanigreg/nmax/actions/workflows/main.yml/badge.svg)](https://github.com/kanigreg/nmax/actions/workflows/main.yml)

# Nmax

Find 'N' maximum numbers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nmax', :git => "git://github.com/kanigreg/nmax.git"
```

And then execute:

```shell
bundle install
```

## Usage

### Command Line

```shell
cat [filepath] | bundle exec bin/nmax <count>
```

### Convenience API

```ruby
require 'nmax'

io = File.open('data.txt')
count = 3
Nmax.max_numbers(count, io) # => [3, 2, 1]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kanigreg/nmax.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
