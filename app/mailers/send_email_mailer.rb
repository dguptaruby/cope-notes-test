class SendEmailMailer < ApplicationMailer
  def send_message
    @user_email = params[:email]
    @user_message	= params[:message]
    mail(to: @user_email, subject: 'You got a new message!')
  end
end
