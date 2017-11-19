class AddFeaturedToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :is_featured, :boolean, default: false
  end
end
