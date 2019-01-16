require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "redirects to login page if user not logged in" do
      get :new
      expect(response).to redirect_to '/login'
    end
  end

  describe 'POST /' do
      before(:each) do
        user = FactoryBot.create(:user)
        stub_current_user(user)
      end
    end

  # describe "POST #create" do
  #   it "returns http success" do
  #     post :create, params: { post: { caption: 'Hello, world!' } }
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
