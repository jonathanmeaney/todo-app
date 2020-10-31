require 'rails_helper'

RSpec.describe "to_dos/edit", type: :view do
  before(:each) do
    @to_do = assign(:to_do, ToDo.create!(
      :title => "MyString",
      :description => "MyString",
      :completed => false,
      :user => nil
    ))
  end

  it "renders the edit to_do form" do
    render

    assert_select "form[action=?][method=?]", to_do_path(@to_do), "post" do

      assert_select "input#to_do_title[name=?]", "to_do[title]"

      assert_select "input#to_do_description[name=?]", "to_do[description]"

      assert_select "input#to_do_completed[name=?]", "to_do[completed]"

      assert_select "input#to_do_user_id[name=?]", "to_do[user_id]"
    end
  end
end
