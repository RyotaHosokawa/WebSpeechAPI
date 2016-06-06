#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require "cgi"
require "uri"
 
begin 
  data = CGI.new
 
  print "Content-type: text/html\n\n"

  file = "./txtfiles/log.txt"

  txt = URI.unescape(data["text"])

  fh = open(file, "a")
  fh.print txt
  fh.close
end
