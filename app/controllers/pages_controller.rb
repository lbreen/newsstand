class PagesController < ApplicationController
  def home
    @articles = {}

    Outlet.all.each do |outlet|
      valid_articles = outlet.articles.select { |article| article.within_24hrs? }

      valid_articles.each_with_index do |article, index|
        @articles[outlet.name] = {
          index = {
            'title' => article.title,
            'subtitle' => article.subtitle,
            'category' => article.category,
            'url' => article.url
          }
        }
      end
    end
  end
end
