class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.text :post
      t.date :post_date

      t.timestamps
    end
  end
end
