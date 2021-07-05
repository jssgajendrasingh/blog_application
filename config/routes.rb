Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
  	resources :users, except: [:destroy] do
  		resources :article, only: [:index] do
  			member do
  				get 'preview'
  			end	
  		end 	
  	end
  	resource :tag
  end
  root to: "admin/users#index"

  # scope module: 'admin' do 
  # 	resource :comments do 
  # 		collection do 
  # 			get 'search'
  # 		end	
  # 	end	
  # end	
  # resources :comments
end
