namespace :batch do
  desc "Send out batch messages"
  task send_messages: :environment do
    SendEmailService.new().execute
  end
end
