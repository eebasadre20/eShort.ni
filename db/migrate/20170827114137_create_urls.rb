class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :url_code
      t.string :original_url
      t.integer :generated_hash

      t.timestamps
    end
    add_index :urls, :url_code, unique: true
    add_index :urls, :generated_hash
  end
end
