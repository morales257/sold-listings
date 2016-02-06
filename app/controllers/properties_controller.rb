class PropertiesController < ApplicationController

    def index
        @comps = Property.near(params[:search], 1)
        @geojson = Array.new
        
        @comps.each do |comps|
           @geojson << {
               type: "Feature",
               geometry: {
                   type:"Point",
                   coordinates: [comps.longitude, comps.latitude]
               },
               properties: {
                   address: comps.street,
                   :"marker-color" => "#00607d",
                   :"marker-symbol" => "circle",
                   :"market-size" => "medium"
               }
           } 
       end
       
       
        respond_to do |format|
            format.html
            format.json { render json: @geojson } #respond with the created JSON object
        end

    
    end
    
    def show
    end
end
