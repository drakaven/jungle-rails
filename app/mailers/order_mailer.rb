class OrderMailer < ApplicationMailer

  def order_email(order)
    @order = order
    @user = User.where(email: @order.email)[0]
  mail(to: @order.email, subject: 'Sample Email')
  end
end
