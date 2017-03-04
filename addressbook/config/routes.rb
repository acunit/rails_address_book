Rails.application.routes.draw do

  root 'home_page#index'

  get 'contacts/index'

  get '/create' => 'contacts#create'

  get '/store' => 'contacts#store'

  get '/home' => 'contacts#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
