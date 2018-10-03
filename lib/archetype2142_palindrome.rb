require "archetype2142_palindrome/version"

module Archetype2142Palindrome
	def palindrome?
		if processed_content.empty?
			false
		else
			processed_content == processed_content.reverse
		end
	end

	private
	def processed_content
		self.to_s.scan(/[a-zA-Z\d]/i).join.downcase
	end
end

class String
	include Archetype2142Palindrome
end

class Integer
	include Archetype2142Palindrome
end