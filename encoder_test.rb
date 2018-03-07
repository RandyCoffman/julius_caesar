require "minitest/autorun"
require_relative "encoder.rb"

class Caesar_cipher < Minitest::Test
	def test_boolean		#This is made to pass so I can establish a base
		assert_equal(true, true)
	end

	def test_array_of_alphabet
		assert_equal(Array, Alphabet.class)
	end

	def test_string_encode
		assert_equal("Fi wyvi xs hvmro csyv Szepxmri", caesar_cipher("Be sure to drink your Ovaltine", 4))
		p caesar_cipher("Be sure to drink your Ovaltine", 4)
	end

	def test_string_decode
		assert_equal("Be sure to drink your Ovaltine", caesar_cipher("Fi wyvi xs hvmro csyv Szepxmri", -4))
		p caesar_cipher("Fi wyvi xs hvmro csyv Szepxmri", -4)
	end
end