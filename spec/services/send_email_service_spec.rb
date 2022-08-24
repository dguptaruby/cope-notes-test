require 'rails_helper'
describe SendEmailService do
  context 'Send email service execute' do
    it 'should mark the work order as confirmed' do
      user = User.create(email: 'xyz@gmail.com')
      messages = YAML.load(File.read('message.yml'))
      users = User.all.map{|user| user unless user.messages.length == messages.length}.compact
      expect(SendEmailService.new().execute).to eq(users)
    end
  end
end
