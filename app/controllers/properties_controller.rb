class PropertiesController < ApplicationController
    
    def index
        @comps = Property.near(params[:search], 1)
    end
    
    def show
    end
end
