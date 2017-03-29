class StoreController < ApplicationController

  # Tela inicial da aplicacao
  def index
    @products = Product.order(:title)
  end
end
