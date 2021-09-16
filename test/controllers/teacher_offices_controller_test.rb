require "test_helper"

class TeacherOfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_office = teacher_offices(:one)
  end

  test "should get index" do
    get teacher_offices_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_office_url
    assert_response :success
  end

  test "should create teacher_office" do
    assert_difference('TeacherOffice.count') do
      post teacher_offices_url, params: { teacher_office: { building_name: @teacher_office.building_name, floor_number: @teacher_office.floor_number, room_number: @teacher_office.room_number } }
    end

    assert_redirected_to teacher_office_url(TeacherOffice.last)
  end

  test "should show teacher_office" do
    get teacher_office_url(@teacher_office)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_office_url(@teacher_office)
    assert_response :success
  end

  test "should update teacher_office" do
    patch teacher_office_url(@teacher_office), params: { teacher_office: { building_name: @teacher_office.building_name, floor_number: @teacher_office.floor_number, room_number: @teacher_office.room_number } }
    assert_redirected_to teacher_office_url(@teacher_office)
  end

  test "should destroy teacher_office" do
    assert_difference('TeacherOffice.count', -1) do
      delete teacher_office_url(@teacher_office)
    end

    assert_redirected_to teacher_offices_url
  end
end
