class Summary < ApplicationRecord
  belongs_to :genre

  def self.search(search)
    Summary.where(["title like? OR sentence like?", "%#{search}%", "%#{search}%"])
  end
end
