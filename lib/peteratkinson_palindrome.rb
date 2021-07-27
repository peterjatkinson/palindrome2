# frozen_string_literal: true

require "peteratkinson_palindrome/version"

module PeteratkinsonPalindrome

 # Returns true for a palindrome, false otherwise.
 def palindrome?
  processed_content == processed_content.reverse
end

private

  # Returns content for palindrome testing.
  def processed_content
    to_s.scan(/[a-z0-9]/i).join.downcase
  end
end

class String
  include PeteratkinsonPalindrome
end

class Integer
  include PeteratkinsonPalindrome
end