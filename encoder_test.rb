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
		assert_equal("Be sure to drink your Ovaltine", reverse_caesar_cipher("Fi wyvi xs hvmro csyv Szepxmri", 4))
		p reverse_caesar_cipher("Fi wyvi xs hvmro csyv Szepxmri", 4)
	end

	def test_string_7th_day_encode
		assert_equal("Il zbyl av kypur fvby Vchsapul", caesar_cipher("Be sure to drink your Ovaltine"))
		p caesar_cipher("Be sure to drink your Ovaltine")
	end

	def test_string_7th_day_decode
		assert_equal("Be sure to drink your Ovaltine", reverse_caesar_cipher("Il zbyl av kypur fvby Vchsapul"))
		p reverse_caesar_cipher("Fi wyvi xs hvmro csyv Szepxmri")
	end

	def test_multi_string_encode
		assert_equal("Fi wyvi xs hvmro csyv Szepxmri, lipps", caesar_cipher(["Be sure to drink your Ovaltine", "hello"].join(", "), 4))
	end

	def test_multi_string_decode
		assert_equal("Be sure to drink your Ovaltine, hello", reverse_caesar_cipher(["Il zbyl av kypur fvby Vchsapul", "olssv"].join(", ")))
	end
end