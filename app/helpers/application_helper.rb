module ApplicationHelper

  #Major: As a visitor I can view the overall rating of products as I browse the catalog

  def get_product_rating(product)
    @reviews = Review.where(product_id:  product)
    @total = 0
    @reviews.each do |review|
      @total += review.rating
    end
    if @reviews.length > 0
      "Rating: #{@total / @reviews.length}"
    end
  end
end
