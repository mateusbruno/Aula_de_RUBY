xml.orders do

  xml.generated_at Time.now

  xml.quant @orders.size

  @orders.each do |order|
    xml.order do
      xml.name order.name
      xml.address order.address
    end
  end

end