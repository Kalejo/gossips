require 'rails_helper'

RSpec.describe "gossips/new", type: :view do
  before(:each) do
    assign(:gossip, Gossip.new(
      :anonymous_author => "MyString",
      :content => "MyString"
    ))
  end

  it "renders new gossip form" do
    render

    assert_select "form[action=?][method=?]", gossips_path, "post" do

      assert_select "input[name=?]", "gossip[anonymous_author]"

      assert_select "input[name=?]", "gossip[content]"
    end
  end
end
