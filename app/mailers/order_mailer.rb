class OrderMailer < ApplicationMailer

  def order_email(order)
    @order = order
    mail(to: 'drakaven@hotmail.com', subject: 'Sample Email')
  end

end
