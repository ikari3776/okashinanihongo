class Content
  include ActiveModel::Model
  include ActiveModel::Attributes
  
  attribute :word, :string
  
  validates :word, length: { in: 1..30 }
  
  def okaniho
    replacements = {
      'い' => 'り', 'り' => 'い',
      'こ' => '乙', '乙' => 'こ',
      'は' => 'ほ', 'ほ' => 'は',
      'め' => 'ぬ', 'ぬ' => 'め',
      'ろ' => 'る', 'る' => 'ろ', 
      'さ' => 'ち', 'ち' => 'さ',
      'つ' => 'っ', 'っ' => 'つ',
      'や' => 'ゃ', 'ゃ' => 'や',
      'ゆ' => 'ゅ', 'ゅ' => 'ゆ',
      'よ' => 'ょ', 'ょ' => 'よ',
      'し' => 'レ', 'レ' => 'し', 
      'シ' => 'ツ', 'ツ' => 'シ',
      'カ' => '力', '力' => 'カ',
      'エ' => '工', '工' => 'エ', 
      'ウ' => 'ワ', 'ワ' => 'ウ',
      'ケ' => 'ヶ', 'ヶ' => 'ケ', 
      'ヤ' => 'ャ', 'ャ' => 'ヤ',
      'ユ' => 'ュ', 'ュ' => 'ユ',
      'ヨ' => 'ョ', 'ョ' => 'ヨ',
      '日' => '目', '目' => '日',
      '人' => '入', '入' => '人',
      '大' => '犬', '犬' => '大',
      '木' => '本', '本' => '木',
      '口' => '囗', '囗' => '口', 
      '土' => '士', '士' => '土',
      '未' => '末', '末' => '未',
      '天' => '夫', '夫' => '天', 
      '内' => '肉', '肉' => '内',
      '牛' => '午', '午' => '牛',
      '水' => '氷', '氷' => '水',
      '白' => '自', '自' => '白',
      '金' => '全', '全' => '金',
      '見' => '貝', '貝' => '見',
    }
  
    word.chars.map { |char| replacements[char] || char }.join
  end
end  
