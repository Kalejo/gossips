require 'rails_helper'

RSpec.describe "gossips/show", type: :view do
  before(:each) do
    @gossip = assign(:gossip, Gossip.create!(
      :anonymous_author => "Anonymous Author",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Anonymous Author/)
    expect(rendered).to match(/Content/)
  end
end
