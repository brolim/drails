Drails::Application.routes.draw do

  root to: "drone#index"
  resources :details, :only=>[:index]

end