require "application_system_test_case"

class TimeOffsTest < ApplicationSystemTestCase
  setup do
    @time_off = time_offs(:one)
  end

  test "visiting the index" do
    visit time_offs_url
    assert_selector "h1", text: "Time offs"
  end

  test "should create time off" do
    visit time_offs_url
    click_on "New time off"

    fill_in "Calendar", with: @time_off.calendar
    fill_in "Description", with: @time_off.description
    check "Half day" if @time_off.half_day
    fill_in "Kind", with: @time_off.kind
    check "Paid time" if @time_off.paid_time
    fill_in "Range", with: @time_off.range
    fill_in "Worker", with: @time_off.worker_id
    click_on "Create Time off"

    assert_text "Time off was successfully created"
    click_on "Back"
  end

  test "should update Time off" do
    visit time_off_url(@time_off)
    click_on "Edit this time off", match: :first

    fill_in "Calendar", with: @time_off.calendar
    fill_in "Description", with: @time_off.description
    check "Half day" if @time_off.half_day
    fill_in "Kind", with: @time_off.kind
    check "Paid time" if @time_off.paid_time
    fill_in "Range", with: @time_off.range
    fill_in "Worker", with: @time_off.worker_id
    click_on "Update Time off"

    assert_text "Time off was successfully updated"
    click_on "Back"
  end

  test "should destroy Time off" do
    visit time_off_url(@time_off)
    click_on "Destroy this time off", match: :first

    assert_text "Time off was successfully destroyed"
  end
end
