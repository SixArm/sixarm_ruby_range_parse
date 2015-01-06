# SixArm.com » Ruby » <br> Range.parse method to convert text to a Range object.

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

    gem "sixarm_ruby_range_parse", "~>1.0.1"	

Require:

    require "sixarm_ruby_range_parse"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_range_parse --trust-policy HighSecurity


## Changes

* 2012-09-19 1.0.1 Add string conversion and round-trip test
* 2012-09-18 1.0.0 Publish extracted code from existing app


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2015 Joel Parker Henderson
