Rails.application.routes.draw do
  

  get 'items/index'

  get 'items/new'

  get 'items/create'

  get 'items/show'

  get 'items/destroy'

  get 'items/create'

get 'welcome/index'

devise_for :users

resources :users, only: :show do #get 'users_controller/show'
	resources :item, only: :create
end

root to: 'welcome#index'

end
