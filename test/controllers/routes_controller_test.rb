require "test_helper"

class RoutesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "render routes" do
    get routes_path
    assert_response :success
  end

  test "render route with their trips and respective orders" do
    get routes_path(routes(:one).id)
    assert_response :success
    assert_match /Ruta1/, response.body
  end

end
