Rails.application.routes.draw do
	root 'static_pages#index'
	get '/auth/spotify/callback', to: 'users#spotify'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
