#!C:\Ruby23-x64\bin\ruby.exe --
# -*- coding: utf-8 -*-

require "cgi"
require "uri"
 
begin 
  data = CGI.new
 
  print "Content-Type: text/plain\n\n"

  file = "/var/www/html/b1013224/wsapi/txtfiles/log.txt"

  txt = URI.unescape(data["txt"])

  fh = open(file, "a")
  fh.print txt + "\n"
  fh.close
end
