require 'mechanize'

url=URI.parse('https://affiliate.amazon.co.jp/')
agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'
page = agent.get(url)

next_page = page.form_with(:name => 'sign_in') do |form|
    form.username = ''
    form.password = ''
end.submit

puts next_page.search('//*[@id="mini-report"]/div[5]/div[2]').text

