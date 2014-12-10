require 'rails_helper'

RSpec.describe "sendgrid/logs/edit", :type => :view do
  before(:each) do
    @sendgrid_log = assign(:sendgrid_log, Sendgrid::Log.create!(
      :email => "MyString"
    ))
  end

  it "renders the edit sendgrid_log form" do
    render

    assert_select "form[action=?][method=?]", sendgrid_log_path(@sendgrid_log), "post" do

      assert_select "input#sendgrid_log_email[name=?]", "sendgrid_log[email]"
    end
  end
end
