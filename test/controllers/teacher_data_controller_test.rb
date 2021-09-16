require "test_helper"

class TeacherDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_datum = teacher_data(:one)
  end

  test "should get index" do
    get teacher_data_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_datum_url
    assert_response :success
  end

  test "should create teacher_datum" do
    assert_difference('TeacherDatum.count') do
      post teacher_data_url, params: { teacher_datum: { email: @teacher_datum.email, first_name: @teacher_datum.first_name, last_name: @teacher_datum.last_name, nine_hundred: @teacher_datum.nine_hundred } }
    end

    assert_redirected_to teacher_datum_url(TeacherDatum.last)
  end

  test "should show teacher_datum" do
    get teacher_datum_url(@teacher_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_datum_url(@teacher_datum)
    assert_response :success
  end

  test "should update teacher_datum" do
    patch teacher_datum_url(@teacher_datum), params: { teacher_datum: { email: @teacher_datum.email, first_name: @teacher_datum.first_name, last_name: @teacher_datum.last_name, nine_hundred: @teacher_datum.nine_hundred } }
    assert_redirected_to teacher_datum_url(@teacher_datum)
  end

  test "should destroy teacher_datum" do
    assert_difference('TeacherDatum.count', -1) do
      delete teacher_datum_url(@teacher_datum)
    end

    assert_redirected_to teacher_data_url
  end
end
