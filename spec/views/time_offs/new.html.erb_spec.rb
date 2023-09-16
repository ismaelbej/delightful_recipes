require 'rails_helper'

RSpec.describe "time_offs/new", type: :view do
  before(:each) do
    assign(:time_off, TimeOff.new(
      range: "",
      description: "MyText",
      kind: "MyString",
      half_day: false,
      paid_time: false,
      calendar: "MyString",
      worker_id: 1
    ))
  end

  it "renders new time_off form" do
    render

    assert_select "form[action=?][method=?]", time_offs_path, "post" do

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
