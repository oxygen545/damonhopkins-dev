require 'rails_helper'

RSpec.describe "messages/new", type: :view do
  before(:each) do
    assign(:message, Message.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :subject => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input[name=?]", "message[first_name]"

      assert_select "input[name=?]", "message[last_name]"

      assert_select "input[name=?]", "message[email]"

      assert_select "input[name=?]", "message[subject]"

      assert_select "textarea[name=?]", "message[body]"
    end
  end
end
