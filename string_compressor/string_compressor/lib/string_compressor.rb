def string_compressor(string)
	compressed = string.chars.chunk{|x| x}.map{|(a,b)| "#{a}#{b.length}" }.join
	compressed.length > string.length ? string : compressed		
end

print string_compressor("aabccaaa")