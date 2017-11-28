require 'rails_helper'

RSpec.describe "comments/index", :type => :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        :user => "User",
        :post_id => 2,
        :comment => "MyText"
      ),
      Comment.create!(
        :user => "User",
        :post_id => 2,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
