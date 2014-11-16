# -*- coding: utf-8 -*- 
require 'cgi'

def parse(page_source)
    dates = page_source.scan(%r!(\d+)年 ?(\d+)月 ?(\d+)日<br />!)
    url_titles = page_source.scan(%r!^<a href="(.+?)">(.+?)</a><br />!)
 
    url_titles.zip(dates).map{|(aurl, atitle),
                              ymd|[CGI.unescapeHTML(aurl),
                              CGI.unescapeHTML(atitle), Time.local(*ymd)]
    }
end

# url_titles.zip(dates).map{ |(aurl, atitle), ymd | [CGI.unescapeHTML(aurl), CGI.unescapeHTML(atitle), Time.local(*ymd)] } # =>



# page_source = parse(open("samplepage.html", &:read))
page_source = parse(`/usr/local/bin/wget -q -O- http://crawler.sbcr.jp/samplepage.html`)
page_source[0,2] # =>
