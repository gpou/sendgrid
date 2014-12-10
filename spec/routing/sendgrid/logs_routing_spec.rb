require "rails_helper"

RSpec.describe Sendgrid::LogsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sendgrid/logs").to route_to("sendgrid/logs#index")
    end

    it "routes to #new" do
      expect(:get => "/sendgrid/logs/new").to route_to("sendgrid/logs#new")
    end

    it "routes to #show" do
      expect(:get => "/sendgrid/logs/1").to route_to("sendgrid/logs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sendgrid/logs/1/edit").to route_to("sendgrid/logs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sendgrid/logs").to route_to("sendgrid/logs#create")
    end

    it "routes to #update" do
      expect(:put => "/sendgrid/logs/1").to route_to("sendgrid/logs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sendgrid/logs/1").to route_to("sendgrid/logs#destroy", :id => "1")
    end

  end
end
