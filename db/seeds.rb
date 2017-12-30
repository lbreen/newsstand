Article.destroy_all
Outlet.destroy_all

sky_news = Outlet.create!(name: 'Sky News', url: 'https://news.sky.com', article_css_tag: '.sdc-news-story-grid__headline')
the_times = Outlet.create!(name: 'The Times', url: 'https://www.thetimes.co.uk', article_css_tag: '.Item-headline', category_css_tag: '.Section-title')


Article.create!(
  title: 'UK votes to leave EU',
  subtitle: "UK votes 51\% in favour of leaving the EU",
  category: 'Politics',
  outlet: sky_news,
  date_published: Date.today,
  url: "news.sky.com/uk"
  )

Article.create!(
  title: 'Shock election loss',
  subtitle: 'May loses her commons majority in snap election',
  category: 'Politics',
  outlet: the_times,
  date_published: Date.today,
  url: "news.sky.com/uk"
  )

Article.create!(
  title: '4 killed in tragic house fire',
  subtitle: 'House fire in Burton has killed a family of four, say firefighters',
  category: 'UK',
  outlet: sky_news,
  date_published: Date.today,
  url: "www.thetimes.co.uk"
  )

puts 'Successfully seeded db'
