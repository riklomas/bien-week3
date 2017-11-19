class PagesController < ApplicationController
  
  def home
    @content = Page.find_by(url: "home")
    
    @highly_rated_reviews = Review.where("score >= 8")
    
    @featured_reviews = Review.where(is_featured: true)
  end
  
  def about
    @content = Page.find_by(url: "about")
  end
  
  def terms
    @content = Page.find_by(url: "terms")
  end
  
end
