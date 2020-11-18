require 'rails_helper'

RSpec.describe "messages/new", type: :view do
  before(:each) do
    assign(:message, Message.new(
      name: "MyString",
      entry: "MyString",
      ip_address: "MyString"
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input[name=?]", "message[name]"

      assert_select "textarea[name=?]", "message[entry]"
    end
  end
end
