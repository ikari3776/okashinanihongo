class Content < ApplicationRecord
  validates :word, length: { in: 1..30 }

  def okaniho
    word.gsub("は", "ほ")
  end
end
