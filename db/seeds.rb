# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ユーザ作成
(1..50).each do |number|
User.create(name: 'siruko' + number.to_s, email: 'siruko' + number.to_s + '@docomo.ne.jp', password: 'sirusiru' + number.to_s)
end
# 上記はうまく動かなった

# 特定のユーザのコメント作成
# (1..25).each do |number|
#   user = User.third
#   micropost = user.microposts.build(content: 'ナイスー！テストー！'+ number.to_s)
#   micropost.save
# end