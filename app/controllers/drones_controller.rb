class DronesController < ApplicationController

  def show
  end

  def control
  end

  def configuration
  end

  def update
  	File.new("directions/#{(Time.now.to_f * 1000).to_i} #{params['direction']}", "w").close
  	render :json=>{'msg'=>'ok'}
  end

end