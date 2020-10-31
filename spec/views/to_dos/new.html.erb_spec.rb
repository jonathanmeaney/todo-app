require 'rails_helper'

RSpec.describe "to_dos/new", type: :view do
  before(:each) do
    assign(:to_do, ToDo.new(
      :title => "MyString",
      :description => "MyString",
      :completed => false,
      :user => nil
    ))
  end

  it "renders new to_do form" do
    render

    assert_select "form[action=?][method=?]", to_dos_path, "post" do

      assert_select "input#to_do_title[name=?]", "to_do[title]"

      assert_select "input#to_do_description[name=?]", "to_do[description]"

      assert_select "input#to_do_completed[name=?]", "to_do[completed]"

      assert_select "input#to_do_user_id[name=?]", "to_do[user_id]"
    end
  end
end
