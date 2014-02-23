module Jekyll

  module BlogFilter
    def preview(input, url)
      re = %r{<!--more(?<read_more_message> ...*)?-->}
      m = input.match re

      if m.nil?
        input
      elsif m[:read_more_message].nil?
        %|#{input.split(m[0]).first.strip}<p class="read-more"><a href="#{url}">Continue reading </a></p>|
      else
        %|#{input.split(m[0]).first.strip}<p class="read-more"><a href="#{url}">#{m[:read_more_message].strip}</a></p>|
      end
    end

      # site + "/post-assets/" + [1..-1]


    def asset_path(site, post_id)

      # post_id

      new_id = post_id.gsub("jekyll/update/", "")

      site + "post-assets/" + new_id.gsub("/", "-")[1..-1]

      # jekyll/update/2014/02/15/nyt-4th-down-bot-goes-back-in-the-box
    # post_id.gsub("jekyll/update/", "").gsub("/", "-")[1..-1]
    end

  end

end

Liquid::Template.register_filter(Jekyll::BlogFilter)
