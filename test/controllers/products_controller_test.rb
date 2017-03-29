require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
    @product_novo = { title: 'Meu produto', description: 'Descricao do meu produto', price: 1.99 }
  end

  test "should get index" do
    get products_url  # GET /products
    assert_response :success
  end

  test "should get new" do
    get new_product_url # GET /products/new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      # POST /products  => create
      post products_url, params: { product: @product_novo }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)  # GET /products/:id
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product) # GET /products/:id/edit
    assert_response :success
  end

  test "should update product" do
    # PATCH /products/:id
    patch product_url(@product), params: { product: @product_novo }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)  # DELETE /products/:id
    end

    assert_redirected_to products_url
  end
end
