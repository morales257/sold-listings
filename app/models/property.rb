class Property < ActiveRecord::Base
   # attr_accessible :street, :city

    geocoded_by :full_address
    
    after_validation :geocode
    
    #validates presence: true
    
    def full_address
        [street, city].compact.join(",")
    end
    
    
end
