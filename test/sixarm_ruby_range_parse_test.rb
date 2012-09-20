# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_range_parse'

describe Range do

  describe "#parse" do

    it "parses two dots as a range including the end" do
      Range.parse("a..z").must_equal "a".."z"
    end

    it "parses three dots as a range including the end" do
      Range.parse("a...z").must_equal "a"..."z"
    end

    it "calls to_s on the input" do
      x = Object.new
      def x.to_s; "a..z"; end
      Range.parse(x).must_equal "a".."z"
    end

    it "round trips" do
      range = "a".."z"
      Range.parse(range).must_equal range
    end

  end

  describe "#parse_helper" do

    it "is pass through (subclasses will override this method)" do
      Range.parse_helper("a").must_equal ("a")
    end

  end

end
