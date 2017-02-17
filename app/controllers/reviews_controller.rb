class ReviewsController < ApplicationController

  before_action :authenticate

  def create
    Review.create!(
        rating: params[:review][:rating].to_i,
        product_id: params[:product_id],
        description: params[:review][:description],
        user_id: current_user.id
    )
    redirect_to :back
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to :back
  end

  end
