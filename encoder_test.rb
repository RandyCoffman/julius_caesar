require "minitest/autorun"
require_relative "encoder.rb"

class Caesar_cipher < Minitest::Test
	def test_boolean		#This is made to pass so I can establish a base
		assert_equal(true, true)
	end

	def test_string
		assert_equal(String, caesar_cipher("string").class)
	end

	def test_array
		assert_equal(Array, convert("string").class)
	end

	def test_letter_to_number_in_array
		assert_equal([97], convert("a"))
	end

	def test_numbers_to_letters_in_array
		assert_equal([97, 98, 99], convert("abc"))
	end
end