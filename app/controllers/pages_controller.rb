class PagesController < ApplicationController
  
  def home
    @content = Page.find_by(url: "home")
    
    @highly_rated_reviews = Review.where("score >= 8")
  end
  
  def about
    @content = Page.find_by(url: "about")
  end
  
  def terms
    @content = Page.find_by(url: "terms")
  end
  
end
