require 'spec_helper'

describe Api::IdeasController do
  let(:idea) { Fabricate :idea }

  it "should return all the Ideas by default" do
    get :index, format: :json
    response.should be_success
    pending
  end
end
