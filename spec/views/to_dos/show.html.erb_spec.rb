require 'rails_helper'

RSpec.describe "to_dos/show", type: :view do
  before(:each) do
    @to_do = assign(:to_do, ToDo.create!(
      :title => "Title",
      :description => "Description",
      :completed => false,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
