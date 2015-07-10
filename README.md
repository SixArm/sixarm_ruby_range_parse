# SixArm.com » Ruby » <br> Range.parse method to convert text to a Range object.

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_range_parse.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_range_parse)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_range_parse.png)](https://travis-ci.org/SixArm/sixarm_ruby_range_parse)

* Doc: <http://sixarm.com/sixarm_ruby_range_parse/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_range_parse>
* Repo: <http://github.com/sixarm/sixarm_ruby_range_parse>
* Email: Joel Parker Henderson, <joel@sixarm.com>

## Introduction

Parse a text string to a range.

To include the end item, use two dots:

    Range.parse("a..z") #=> "a".."z"

To exclude the end item, use three dots:

    Range.parse("a...z") #=> "a"..."z"

The parse method calls #to_s on its input:

    class Foo
      def to_s
        "hello..world"
      end
    end

    Range.parse(Foo.new) #=> "hello".."world"

The parse method uses the same dot notation as Range#to_s which enables round trips:

    range = Range.parse("hello..world")
    range.to_s #=> "hello..world"


For docs go to <http://sixarm.com/sixarm_ruby_range_parse/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_range_parse

Bundler:

    gem "sixarm_ruby_range_parse", ">=1.0.2", "<2"

Require:

    require "sixarm_ruby_range_parse"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_range_parse --trust-policy HighSecurity
