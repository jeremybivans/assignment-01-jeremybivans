require "application_system_test_case"

class TeacherDataTest < ApplicationSystemTestCase
  setup do
    @teacher_datum = teacher_data(:one)
  end

  test "visiting the index" do
    visit teacher_data_url
    assert_selector "h1", text: "Teacher Data"
  end

  test "creating a Teacher datum" do
    visit teacher_data_url
    click_on "New Teacher Datum"

    fill_in "Email", with: @teacher_datum.email
    fill_in "First name", with: @teacher_datum.first_name
    fill_in "Last name", with: @teacher_datum.last_name
    fill_in "Nine hundred", with: @teacher_datum.nine_hundred
    click_on "Create Teacher datum"

    assert_text "Teacher datum was successfully created"
    click_on "Back"
  end

  test "updating a Teacher datum" do
    visit teacher_data_url
    click_on "Edit", match: :first

    fill_in "Email", with: @teacher_datum.email
    fill_in "First name", with: @teacher_datum.first_name
    fill_in "Last name", with: @teacher_datum.last_name
    fill_in "Nine hundred", with: @teacher_datum.nine_hundred
    click_on "Update Teacher datum"

    assert_text "Teacher datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher datum" do
    visit teacher_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher datum was successfully destroyed"
  end
end
