Rails.application.routes.draw do
  

  # get 'items/index'

  # get 'items/new'

  # get 'items/create'

  # get 'items/show'

  # get 'items/destroy'

  # get 'items/create'
 resources :items

post '/items' => 'items#create'
get 'welcome/index'

devise_for :users

resources :users, only: :show do #get 'users_controller/show'
	resources :items, only: :create
end

root to: 'welcome#index'

end
