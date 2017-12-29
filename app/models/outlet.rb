class Outlet < ApplicationRecord
  has_many :articles

  validates :name, :url, :article_css_tag, presence: true
end
