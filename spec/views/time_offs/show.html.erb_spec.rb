require 'rails_helper'

RSpec.describe "time_offs/show", type: :view do
  before(:each) do
    assign(:time_off, TimeOff.create!(
      range: "",
      description: "MyText",
      kind: "Kind",
      half_day: false,
      paid_time: false,
      calendar: "Calendar",
      worker_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Kind/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Calendar/)
    expect(rendered).to match(/2/)
  end
end
