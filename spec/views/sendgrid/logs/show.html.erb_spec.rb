require 'rails_helper'

RSpec.describe "sendgrid/logs/show", :type => :view do
  before(:each) do
    @sendgrid_log = assign(:sendgrid_log, Sendgrid::Log.create!(
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
  end
end
