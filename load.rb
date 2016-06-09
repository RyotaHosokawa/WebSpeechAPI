#!C:\Ruby23-x64\bin\ruby.exe --
# -*- coding: utf-8 -*-

require "cgi"
require "uri"
 
begin 
  data = CGI.new
 
  print "Content-Type: text/plain\n\n"

  file = "./txtfiles/log.txt"

  f = open(file, "r")
  while line = f.gets
    print line
  end
  f.close
end
