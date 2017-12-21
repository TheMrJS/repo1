#!/usr/bin/ruby

file = File.readlines('file1')
word = file[2].split(/\W+/)
puts word[3]
	




