class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end


# <ActionController::Parameters {
#     "utf8"=>"✓",
#     "authenticity_token"=>"Ocx0jcDDFfINilJr0mEu/k/KDSFSIwMswLS4kdAIHiIx+wkpdCc/pNvc/tbHPs6q6skAYLf9CRXak1xcwpfT5w==",
#       "review"=><ActionController::Parameters {
#         "content"=>"sdf",
#         "rating"=>"4"
#       } permitted: false>,
#     "commit"=>"Create Review",
#     "controller"=>"reviews",
#     "action"=>"create",
#     "restaurant_id"=>"11"} permitted: false>
