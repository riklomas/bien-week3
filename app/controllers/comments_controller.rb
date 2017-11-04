class CommentsController < ApplicationController
  
  def create
    
    @review = Review.find(params[:review_id])
    
    @comment = @review.comments.new(params.require(:comment).permit(:body))
    
    @comment.save
    
    # go back to the review show page
    redirect_to review_path(@review)
    
  end
  
end
