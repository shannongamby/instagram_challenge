require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #new' do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe 'creating user' do
    it 'redirects when successful' do
      post :create, params: { user: { name: 'Jeff', email: 'jeff@hotmail.com',
                                      password: 'password1', password_confirmation: 'password1' } }
      expect(response).to redirect_to('/')
    end
  end

  describe 'invalid user created' do
    it 'does not redirect' do
      post :create, params: { user: { name: 'Jeff', email: 'jeff@hotmail.com',
                                      password: 'password1', password_confirmation: 'password' } }
      expect(response).not_to redirect_to('/')
    end
  end
end
