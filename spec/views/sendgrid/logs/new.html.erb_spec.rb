require 'rails_helper'

RSpec.describe "sendgrid/logs/new", :type => :view do
  before(:each) do
    assign(:sendgrid_log, Sendgrid::Log.new(
      :email => "MyString"
    ))
  end

  it "renders new sendgrid_log form" do
    render

    assert_select "form[action=?][method=?]", sendgrid_logs_path, "post" do

      assert_select "input#sendgrid_log_email[name=?]", "sendgrid_log[email]"
    end
  end
end
