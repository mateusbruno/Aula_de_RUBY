require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get store_index_url
    assert_select 'h1', 1
    assert_select 'h1', 'Catalogo de Produtos'
    assert_response :success
  end

end
