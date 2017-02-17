class OrderMailerPreview < ActionMailer::Preview

  def order_email
    @order = Order.find(5)
    OrderMailer.order_email(@order)
  end

end