require 'rails_helper'

RSpec.describe "time_offs/edit", type: :view do
  let(:time_off) {
    TimeOff.create!(
      range: "",
      description: "MyText",
      kind: "MyString",
      half_day: false,
      paid_time: false,
      calendar: "MyString",
      worker_id: 1
    )
  }

  before(:each) do
    assign(:time_off, time_off)
  end

  it "renders the edit time_off form" do
    render

    assert_select "form[action=?][method=?]", time_off_path(time_off), "post" do

      assert_select "input[name=?]", "time_off[range]"

      assert_select "textarea[name=?]", "time_off[description]"

      assert_select "input[name=?]", "time_off[kind]"

      assert_select "input[name=?]", "time_off[half_day]"

      assert_select "input[name=?]", "time_off[paid_time]"

      assert_select "input[name=?]", "time_off[calendar]"

      assert_select "input[name=?]", "time_off[worker_id]"
    end
  end
end
