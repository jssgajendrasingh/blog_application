Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
  	resources :users, except: [:destroy] do
      get 'search_form',on: :collection 
      post 'find_user_by_name', on: :collection
  		resources :article, only: [:index]  	
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
