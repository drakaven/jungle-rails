class OrderMailer < ApplicationMailer

  def order_email(order)
    @order = order
    @user = User.where(email: @order.email)[0]
    @line_items = LineItem.where(order_id: @order.id)
  mail(to: @order.email, subject: 'Sample Email')
  end
end
