require 'rails_helper'

RSpec.describe "to_dos/index", type: :view do
  before(:each) do
    assign(:to_dos, [
      ToDo.create!(
        :title => "Title",
        :description => "Description",
        :completed => false,
        :user => nil
      ),
      ToDo.create!(
        :title => "Title",
        :description => "Description",
        :completed => false,
        :user => nil
      )
    ])
  end

  it "renders a list of to_dos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
