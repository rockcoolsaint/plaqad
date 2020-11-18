require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        name: "Name",
        entry: "Entry",
        ip_address: "Ip Address"
      ),
      Message.create!(
        name: "Name",
        entry: "Entry",
        ip_address: "Ip Address"
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "div.card-body", count: 2
  end
end
