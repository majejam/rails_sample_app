# Products
Product.delete_all
99.times do |n|
  #Todo
  Product.create(title: "lorem #{n}", description: "ipsum #{n}", price:2)
end

p Product.count