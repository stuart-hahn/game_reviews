class Link < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :url, presence: true, uniqueness: { case_sensitive: false }
end
