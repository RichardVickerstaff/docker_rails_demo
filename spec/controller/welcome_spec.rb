require 'rails_helper'

describe WelcomeController, type: :controller do
  describe 'get index' do

    subject { get :index }

    it 'has a welcome message' do
      expect(subject).to render_template(:index)
    end
  end
end
