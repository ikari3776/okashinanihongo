class Content
  include ActiveModel::Model
  include ActiveModel::Attributes
  
  attribute :word, :string
  
  validates :word, length: { in: 1..30 }
  
  def okaniho
    word.gsub("は", "ほ")
  end
end  
