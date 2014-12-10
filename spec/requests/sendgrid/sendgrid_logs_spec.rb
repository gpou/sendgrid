require 'rails_helper'

RSpec.describe "Sendgrid::Logs", :type => :request do
  describe "GET /sendgrid_logs" do
    it "works! (now write some real specs)" do
      get sendgrid_logs_path
      expect(response).to have_http_status(200)
    end
  end
end
