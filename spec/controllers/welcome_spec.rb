require 'rails_helper'

describe WelcomeController, type: :controller do
  describe 'get index' do
    let!(:message) { create :message }

    subject { get :index }

    it 'has a welcome message' do
      expect(subject).to render_template(:index)
    end

    it 'assigns the latest message' do
      subject
      expect(assigns(:message)).to eq(message)
    end
  end
end
