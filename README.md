# SixArm.com » Ruby » <br> Range.parse method to convert text to a Range object.

<!--HEADER-OPEN-->

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_range_parse.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_range_parse)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_range_parse.png)](https://travis-ci.org/SixArm/sixarm_ruby_range_parse)

* Git: <https://github.com/sixarm/sixarm_ruby_range_parse>
* Doc: <http://sixarm.com/sixarm_ruby_range_parse/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_range_parse>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Changes: See CHANGES.md file.
* License: See LICENSE.md file.
* Helping: See CONTRIBUTING.md file.

<!--HEADER-SHUT-->

## Introduction

Parse a text string to a range.

To include the end item, use two dots:

    Range.parse("a..z") #=> "a".."z"

To exclude the end item, use three dots:

    Range.parse("a...z") #=> "a"..."z"

For docs go to <http://sixarm.com/sixarm_ruby_range_parse/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_range_parse", ">= 1.0.2", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_range_parse -v ">= 1.0.2, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_range_parse -v ">= 1.0.2, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_range_parse"

<!--INSTALL-SHUT-->

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
