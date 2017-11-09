# SixArm.com → Ruby → <br> Range.parse method to convert text to a Range object.

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_range_parse.svg)](http://badge.fury.io/rb/sixarm_ruby_range_parse)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_range_parse.png)](https://travis-ci.org/SixArm/sixarm_ruby_range_parse)
[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_range_parse.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_range_parse)
[![Coverage Status](https://coveralls.io/repos/SixArm/sixarm_ruby_range_parse/badge.svg?branch=master&service=github)](https://coveralls.io/github/SixArm/sixarm_ruby_range_parse?branch=master)

* Git: <https://github.com/sixarm/sixarm_ruby_range_parse>
* Doc: <http://sixarm.com/sixarm_ruby_range_parse/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_range_parse>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [Changes](CHANGES.md), [License](LICENSE.md), [Contributing](CONTRIBUTING.md).

<!--header-shut-->

## Introduction

Parse a text string to a range.

To include the end item, use two dots:

    Range.parse("a..z") #=> "a".."z"

To exclude the end item, use three dots:

    Range.parse("a...z") #=> "a"..."z"

For docs go to <http://sixarm.com/sixarm_ruby_range_parse/doc>

Want to help? We're happy to get pull requests.


<!--install-opent-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_range_parse

Or add this to your Gemfile:

    gem 'sixarm_ruby_range_parse'

### Require

To require the gem in your code:

    require 'sixarm_ruby_range_parse'

<!--install-shut-->

## Parsing objects

For convenience, the parse method calls #to_s on its input.

Example:

    class Foo < Array
      def to_s
        "a..z"
      end
    end

    foo = Foo.new
    Range.parse(foo) #=> "a".."z"

For convenience, the parse method uses the same dot notation as Range#to_s, which enables round trips:

    range = Range.parse("a..z") #=> "a".."z"
    range.to_s #=> "a..z"
