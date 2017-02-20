class CartsController < ApplicationController

  before_action :cart_empty_notice, only: [:show, :remove_item]


  def cart_empty_notice
    if cart == {}
      flash[:notice] = "Your Cart is Empty"
      redirect_to :root
    end
  end

  def show
  end

  def add_item
    product_id = params[:product_id].to_s

    item = cart[product_id] || {"quantity" => 0}
    item["quantity"] += 1
    cart[product_id] = item
    update_cart cart

    redirect_to :back
  end

  def remove_item
    product_id = params[:product_id].to_s

    item = cart[product_id] || {"quantity" => 1}
    item["quantity"] -= 1
    cart[product_id] = item
    cart.delete(product_id) if item["quantity"] < 1
    update_cart cart

    redirect_to :back
  end

end
