class AddNewInfoToReviews < ActiveRecord::Migration[5.1]
  def change
    
    add_column :reviews, :phone_number, :string
    add_column :reviews, :ambiance, :string
    
  end
end
