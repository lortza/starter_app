require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /cats" do
    xit "works! (now write some real specs)" do  
      get cats_path
      expect(response).to have_http_status(200)
    end
  end
end
