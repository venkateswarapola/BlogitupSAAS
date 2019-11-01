Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root 'posts#index', as: 'Blogs'
  root to: "static_pages#index"
	
resources :posts, only: [:index]
	
  get 'about' => 'pages#about', as: 'about'
resources :posts do
	resources :comments
end
resources :posts do
  resources :likes
end
end
