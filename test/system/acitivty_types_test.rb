require "application_system_test_case"

class AcitivtyTypesTest < ApplicationSystemTestCase
  setup do
    @acitivty_type = acitivty_types(:one)
  end

  test "visiting the index" do
    visit acitivty_types_url
    assert_selector "h1", text: "Acitivty Types"
  end

  test "creating a Acitivty type" do
    visit acitivty_types_url
    click_on "New Acitivty Type"

    fill_in "Emoji", with: @acitivty_type.emoji
    fill_in "Measure", with: @acitivty_type.measure
    fill_in "Name", with: @acitivty_type.name
    fill_in "Time conversion", with: @acitivty_type.time_conversion
    click_on "Create Acitivty type"

    assert_text "Acitivty type was successfully created"
    click_on "Back"
  end

  test "updating a Acitivty type" do
    visit acitivty_types_url
    click_on "Edit", match: :first

    fill_in "Emoji", with: @acitivty_type.emoji
    fill_in "Measure", with: @acitivty_type.measure
    fill_in "Name", with: @acitivty_type.name
    fill_in "Time conversion", with: @acitivty_type.time_conversion
    click_on "Update Acitivty type"

    assert_text "Acitivty type was successfully updated"
    click_on "Back"
  end

  test "destroying a Acitivty type" do
    visit acitivty_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Acitivty type was successfully destroyed"
  end
end
