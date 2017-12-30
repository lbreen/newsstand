class Article < ApplicationRecord
  belongs_to :outlet

  validates :title, :subtitle, :category, :url, :outlet, :date_published, presence: true

  def within_24hrs?
    (Date.today - self.date_published).to_i < 1 ? true : false
  end
end
