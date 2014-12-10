require 'rails_helper'

RSpec.describe "sendgrid/logs/index", :type => :view do
  before(:each) do
    assign(:sendgrid_logs, [
      Sendgrid::Log.create!(
        :email => "Email"
      ),
      Sendgrid::Log.create!(
        :email => "Email"
      )
    ])
  end

  it "renders a list of sendgrid/logs" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
