# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




if User.count == 0
  json = ActiveSupport::JSON.decode(File.read Rails.root.join('db', 'project-data-07-30.json'))
  json.each do |u|
    User.create!(name: u['name'], line1: u['line1'], line2: u['line2'], city: u['city'], state: u['state'], zip: u['zip'], phone: u['phone'])
  end
end
