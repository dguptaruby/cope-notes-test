require 'yaml'

class SendEmailService
  attr_reader :messages

  def initialize
    @messages = load_messages
  end

  def execute
    users = User.active_users

    users.each do |user|
      message = get_message(user)

      next unless message

      user.messages << message
      user.update_user
      send_email(user, message) if user.save
    end
  end

  private

  def get_message(user)
    (@messages - user.messages).sample
  end

  def load_messages
    YAML.load(File.read('message.yml'))
  end

  def send_email(user, message)
    SendEmailMailer.with(email: user.email, message: message).send_message.deliver
  end
end
