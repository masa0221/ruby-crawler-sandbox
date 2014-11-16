require 'rss'

rss = RSS::Maker.make("2.0") do | maker | 
    # フィードの言語 日本語ならja
    maker.channel.language = "en"

    # フィードの作成者
    maker.channel.author = "matz"

    # フィードの更新時刻
    maker.channel.updated = Time.now.to_s

    # フィードURL
    maker.channel.link = "http://www.ruby-lang.org/en/feeds/news.rss"

    # フィードの名前
    maker.channel.title = "Example Feed"

    # フィードの要旨
    maker.channel.description = "A longer description of my feed"

    # 項目はmaker.items.new_itemの定義する
    maker.items.new_item do | item |
        # 記事のURL
        item.link = "http://ruby-lang.org/en/news/2010/12/25/ruby-1-9-2-p136-is-released"

        # 記事のタイトル
        item.title = "Ruby 1.9.2-p136 is released"

        # 記事の更新時刻
        item.updated = Time.now.to_s
    end
end

puts rss
