require 'rails_helper'

RSpec.describe "people/new", :type => :view do
  before(:each) do
    assign(:person, Person.new(
      :name => "MyString",
      :age => 1,
      :zipcode => "MyString"
    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do

      assert_select "input#person_name[name=?]", "person[name]"

      assert_select "input#person_age[name=?]", "person[age]"

      assert_select "input#person_zipcode[name=?]", "person[zipcode]"
    end
  end
end
