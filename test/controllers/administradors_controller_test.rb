require "test_helper"

class AdministradorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administrador = administradors(:one)
  end

  test "should get index" do
    get administradors_url, as: :json
    assert_response :success
  end

  test "should create administrador" do
    assert_difference("Administrador.count") do
      post administradors_url, params: { administrador: { email: @administrador.email, name: @administrador.name, password: @administrador.password } }, as: :json
    end

    assert_response :created
  end

  test "should show administrador" do
    get administrador_url(@administrador), as: :json
    assert_response :success
  end

  test "should update administrador" do
    patch administrador_url(@administrador), params: { administrador: { email: @administrador.email, name: @administrador.name, password: @administrador.password } }, as: :json
    assert_response :success
  end

  test "should destroy administrador" do
    assert_difference("Administrador.count", -1) do
      delete administrador_url(@administrador), as: :json
    end

    assert_response :no_content
  end
end
