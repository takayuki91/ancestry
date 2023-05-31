# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

leader = Genre.create(name: '指導者')
elementary_school, junior_high_school, high_school, sports_coach = leader.children.create(
  [
    { name: '小学校教育' },
    { name: '中学校教育' },
    { name: '高等学校教育' },
    { name: 'スポーツコーチ' }
  ]
)

['(小)国語', '(小)算数', '(小)理科', '(小)社会', '(小)体育', '(小)音楽'].each do |name|
  elementary_school.children.create(name: name)
end

['(中)国語', '(中)数学', '(中)理科'].each do |name|
  junior_high_school.children.create(name: name)
end

['(高)国語', '(高)数学', '(高)物理'].each do |name|
  high_school.children.create(name: name)
end

['野球', 'サッカー', 'バスケットボール', '武道'].each do |name|
  sports_coach.children.create(name: name)
end