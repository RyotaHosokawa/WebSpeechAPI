#!C:\Ruby23-x64\bin\ruby.exe --
# -*- coding: utf-8 -*-

require "cgi"
require "uri"
 
begin 
  data = CGI.new
 
  print "Content-Type: text/plain\n\n"

  file = "./txtfiles/log.txt"

  log = Array.new()
  f = open(file, "r")
  while line = f.gets
  	log.unshift(line)
  end
  f.close

  for log_line in log
    print log_line + "<br>"
  end

end
