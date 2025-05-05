class CreateContents < ActiveRecord::Migration[7.1]
  def change
    create_table :contents do |t|
      t.text :word, null: false
      t.timestamps
    end
  end
end
