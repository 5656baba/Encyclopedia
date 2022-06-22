class Genre < ApplicationRecord
  has_many :summaries, dependent: :destroy

  validates :name, presence: true
end
