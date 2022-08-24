require 'rails_helper'
RSpec.describe UsersController, :type => :request do
  describe 'POST create' do
    it 'Return 200 OK' do
      post '/users/create', params: { user: {email: "example@gmail.com"}, format: :json }
      expect(response.status).to eq 200
    end
  end
end