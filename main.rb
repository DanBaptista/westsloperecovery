#!/usr/bin/env ruby

# finding OS
is_a_mac = RUBY_PLATFORM.downcase.include? "darwin"
is_a_pc = RUBY_PLATFORM.downcase.include? "mswin"
is_a_linux = RUBY_PLATFORM.downcase.include? "linux"

# testing browser functionality
wsr_page = "http://www.westsloperecovery.org"
my_html_page = "index.html"
if is_a_mac
    system("open", my_html_page)
elsif is_a_pc
    system("start #{my_html_page}")
elsif is_a_linux
    system "xdg-open #{my_html_page}"
else
    print "unrecognized OS\n"
end
