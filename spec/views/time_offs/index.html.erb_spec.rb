require 'rails_helper'

RSpec.describe "time_offs/index", type: :view do
  before(:each) do
    assign(:time_offs, [
      TimeOff.create!(
        range: "",
        description: "MyText",
        kind: "Kind",
        half_day: false,
        paid_time: false,
        calendar: "Calendar",
        worker_id: 2
      ),
      TimeOff.create!(
        range: "",
        description: "MyText",
        kind: "Kind",
        half_day: false,
        paid_time: false,
        calendar: "Calendar",
        worker_id: 2
      )
    ])
  end

  it "renders a list of time_offs" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Kind".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Calendar".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
