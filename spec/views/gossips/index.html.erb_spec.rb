require 'rails_helper'

RSpec.describe "gossips/index", type: :view do
  before(:each) do
    assign(:gossips, [
      Gossip.create!(
        :anonymous_author => "Anonymous Author",
        :content => "Content"
      ),
      Gossip.create!(
        :anonymous_author => "Anonymous Author",
        :content => "Content"
      )
    ])
  end

  it "renders a list of gossips" do
    render
    assert_select "tr>td", :text => "Anonymous Author".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
