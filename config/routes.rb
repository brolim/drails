Drails::Application.routes.draw do

  root to: "drones#show"

  resource :drone, :only=>[:show, :update] do
  	get :control
  	get :configuration
  end

end