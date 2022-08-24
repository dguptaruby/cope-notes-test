require "rails_helper"
RSpec.describe SendEmailMailer, type: :mailer do
  describe "notify" do
    mail = SendEmailMailer.with(email: 'example@gmail.com', message: 'message').send_message
    it "renders the headers" do
      expect(mail.subject).to eq("You got a new message!")
      expect(mail.to).to eq(["example@gmail.com"])
      expect(mail.from).to eq(["example@gmail.com"])
    end
  end
end