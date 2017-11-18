class AddPhotoToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :photo, :string
  end
end
