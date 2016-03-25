class DetailsController < ApplicationController

  def index
    
    @now = Time.now.in_time_zone

  end

  

end