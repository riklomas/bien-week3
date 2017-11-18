class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :url
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
