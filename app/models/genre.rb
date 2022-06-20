class Genre < ApplicationRecord
  has_many :summaries, dependent: :destroy
end
