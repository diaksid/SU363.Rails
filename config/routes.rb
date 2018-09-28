Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  root 'statics#home'

  # Static
  get '/about', to: 'statics#about'
  get '/privacy', to: 'statics#privacy'

  # Contact
  get '/contact', to: 'contact#show'
  post '/contact', to: 'contact#deliver'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
