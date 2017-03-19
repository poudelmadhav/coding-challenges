def string_compressor(string)
	str = string.chars.chunk{|x| x}.map{|(a,b)| "#{a}#{b.length}" }.join
	str.length > string.length ? string : str		
end

print string_compressor("aabccaaa")