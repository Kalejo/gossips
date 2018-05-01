require 'rails_helper'

RSpec.describe "comments/show", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :anonymous_commentor => "Anonymous Commentor",
      :body => "Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Anonymous Commentor/)
    expect(rendered).to match(/Body/)
  end
end
