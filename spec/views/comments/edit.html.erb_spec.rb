require 'rails_helper'

RSpec.describe "comments/edit", :type => :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :user => "MyString",
      :post_id => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_user[name=?]", "comment[user]"

      assert_select "input#comment_post_id[name=?]", "comment[post_id]"

      assert_select "textarea#comment_comment[name=?]", "comment[comment]"
    end
  end
end
