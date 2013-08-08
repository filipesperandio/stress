#!/usr/bin/env ruby

require 'digest/sha2'

MOD_INDEX = 100 #ARGV[0]
INPUT_FILE = "serial_numbers_huge.txt" #ARGV[1]

def sha(param) 
  Digest::SHA512.hexdigest(param).hex
end
  
def mod(h, c)
  h.to_i % c.to_i
end

def readFile
  serials = []
  file = File.open(INPUT_FILE)
  while( inp = file.gets ) 
    serials << inp.sub("\n", "")
  end
  file.close
  serials
end

def process(servers_count)
  readFile.each do |s|
    sha_512 = sha(s)
    mod(sha_512, servers_count)
  end
end


(1..99999).each do |count|
  process(count)
end
