# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initialize Admin User
if User.find_by(email: "evetteyu20@gmail.com").nil?
  u = User.new
  u.email = "evetteyu20@gmail.com"
  u.password = "123456"
  u.password_confirmation = "123456"
  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end

# Intialize Product

 Product.create!(title: "HYBRID中西融合系列 骨瓷菜盘",
    description: "深度：2.5CM 盘口直径：26CM 盘底直径：16CM",
    price: 298,
    quantity: 5,
    image: open("http://imgs-qn.iliangcang.com/ware/upload/orig/2/354/354800.jpg")
    )

  Product.create!(title: "gogo family-漫步云端 鸡年纪念盘",
    description: "深度：2.5CM 盘口直径：26CM 盘底直径：16CM",
    price: 299,
    quantity: 5,
    image: open("http://imgs-qn.iliangcang.com/ware/upload/orig/2/373/373935.jpg")
    )

  Product.create!(title: "礼盒“福”字款",
    description: "小蓝边碗",
    price: 699,
    quantity: 5,
    image: open("http://imgs-qn.iliangcang.com/ware/upload/orig/2/306/306268.jpg")
    )
