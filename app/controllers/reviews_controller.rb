class ReviewsController < ApplicationController  
  
  def index
    # this is our list page for our reviews
    
    @number = rand(100)
    
    @reviews = Review.all
    
  end
  
  def new
    # the form for adding a new review
    @review = Review.new
  end
  
  def create
    # take info from the form and add it to the database
    @review = Review.new(form_params)
    
    # save this to the database
    @review.save
    
    # redirect back to the home page
    redirect_to root_path
  end
  
  def show
    # individual review page
    @review = Review.find(params[:id])
  end
  
  
  def destroy
    # find the individual review
    @review = Review.find(params[:id])
    
    # destroy
    @review.destroy
    
    # redirect to the home page
    redirect_to root_path
  end
  
  def edit
    # find the individual review (to edit)
    @review = Review.find(params[:id])
  end
  
  def update
    # find the individual review
    @review = Review.find(params[:id])
    
    # update with the new info from the form
    @review.update(form_params)
    
    # redirect somewhere new
    redirect_to review_path(@review)
  end
  
  def form_params
    params.require(:review).permit(:title, :body, :score)
  end

end





