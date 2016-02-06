# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

#open("what-should-i-pay/app/db/Toronto Central Real estate.csv") do  |properties|
 #   properties.read.each_line do |property|
  #      address, city, province, postal, list, sold, date, dom, sf, storeys, 
   #                             rooms, bedrooms, bath, description = property.chomp.split(",")
    #    Property.create!( :street => address, :city => city, :province => province,
     #   :postal => postal, :list_price => list, :sold_price => sold, :sold_date => date,
      #  :dom => dom, :square_feet => sf, :storeys => storeys, :rooms => rooms, 
       # :bedrooms => bedrooms, :bathrooms => bath, :description => description)
#    end
#end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'toronto_real_estate.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
   Property.create!( :street => row['Street Address'], :city => row['City'], :province => row['Province'],
    :postal => row['Postal Code'], :list_price => row['List Price'], :sold_price => row['Sold Price'], :sold_date => row['Sold Date'],
    :dom => row['DOM'], :square_feet => row['Square feet'], :storeys => row['Storeys'], :rooms => row['Rooms'], 
    :bedrooms => row['Bedrooms'], :bathrooms => row['Washrooms'], :description => row['Description'])
   end