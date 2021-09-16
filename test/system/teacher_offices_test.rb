require "application_system_test_case"

class TeacherOfficesTest < ApplicationSystemTestCase
  setup do
    @teacher_office = teacher_offices(:one)
  end

  test "visiting the index" do
    visit teacher_offices_url
    assert_selector "h1", text: "Teacher Offices"
  end

  test "creating a Teacher office" do
    visit teacher_offices_url
    click_on "New Teacher Office"

    fill_in "Building name", with: @teacher_office.building_name
    fill_in "Floor number", with: @teacher_office.floor_number
    fill_in "Room number", with: @teacher_office.room_number
    click_on "Create Teacher office"

    assert_text "Teacher office was successfully created"
    click_on "Back"
  end

  test "updating a Teacher office" do
    visit teacher_offices_url
    click_on "Edit", match: :first

    fill_in "Building name", with: @teacher_office.building_name
    fill_in "Floor number", with: @teacher_office.floor_number
    fill_in "Room number", with: @teacher_office.room_number
    click_on "Update Teacher office"

    assert_text "Teacher office was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher office" do
    visit teacher_offices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher office was successfully destroyed"
  end
end
