# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  price       :decimal(10, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  test "atributos nao podem estar vazios" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
  end

  test "preco precisa ser positivo" do
    product = Product.new
    product.title = "Novo produto de teste"
    product.description = "Descricao do Novo produto de teste"
    assert product.invalid?
    assert_equal ["is not a number"], product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
                 product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  test "produto nao pode ter titulo duplicado" do
    product = Product.new(title: products(:one).title,
                description: "Descricao nova",
                price: 10.99)

    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end

end
