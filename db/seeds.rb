sky_news = Outlet.create(name: 'Sky News', url: 'https://news.sky.com', article_css_tag: '.sdc-news-story-grid__headline')
the_times = Outlet.create(name: 'The Times', url: 'https://www.thetimes.co.uk', article_css_tag: '.Item-headline', category_css_tag: '.Section-title')


Article.create(title: 'UK votes to leave EU', subtitle: "UK votes 51\% in favour of leaving the EU", category: 'Politics', outlet: sky_news, time_published: Time.now)
