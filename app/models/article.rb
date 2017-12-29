class Article < ApplicationRecord
  belongs_to :outlet

  validates :title, :subtitle, :category, :url, :outlet, :time_published, presence: true

  def within_24hrs?
    # select all articles published within last 24hrs
    # true if Time.now - self.time_published < 86400
  end
end
