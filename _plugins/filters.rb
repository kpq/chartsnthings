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

    def asset_path(site, post_id)
      site + "/post-assets/" + post_id.gsub("/","-")[1..-1]
    end

  end

end

Liquid::Template.register_filter(Jekyll::BlogFilter)
