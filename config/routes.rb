Rails.application.routes.draw do
 
  resources :comments
 	root to: 'static_pages#home'
  	resources :gossips

end
