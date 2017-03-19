def is_palindrome?(string)
  string.downcase == string.reverse.downcase
end

puts is_palindrome?("Racecar")
puts is_palindrome?("rAcEcar")
puts is_palindrome?("banana")