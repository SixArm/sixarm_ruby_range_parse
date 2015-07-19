# -*- coding: utf-8 -*-
=begin rdoc
Range extensions to parse text.
=end

class Range

  # Parse the text to a pair of tokens and return these as a new range object.
  #
  # The separator may be two dots or three dots:
  #
  #   * Two dots ".." includes the stop item.
  #   * Three dots "..." excludes the stop item.
  #
  # This method delegates parsing of each tokens to Range.parse_helper
  #
  def self.parse(text)
    begin
      text=text.to_s
      if text=~/(\.\.\.?)/
        start_token = $`
        stop_token = $'
        separator = $1
        exclude_end = (separator == "...")
        return self.new(self.parse_helper(start_token), self.parse_helper(stop_token), exclude_end)
      end
    rescue
    end
    raise ArgumentError.new("#parse text must have a start token, two or three dots, and a stop token; this text does not parse: \"#{text}\"")
  end
    
  # Parse one item of the pair of items.
  # Subclasses will likely want to override this.
  #
  def self.parse_helper(text)
    text
  end

end

