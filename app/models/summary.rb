class Summary < ApplicationRecord
  belongs_to :genre
  validates :title, presence: true
  validates :sentence, presence: true
  validates :genre_id, presence: true

  def self.search(search)
    Summary.where(["title like? OR sentence like?", "%#{search}%", "%#{search}%"])
  end
end
