Rails.application.routes.draw do
  # For details on the DSL available within this file
  # see http://guides.rubyonrails.org/routing.html
  
  root 'projects#index'
  resources :projects do
    resources :tasks, only: [:create, :destroy]
  end
  
  #get "/hello_world", to: "pages#hello"
  post "/projects/:project_id/tasks/:id/toggle", to: "tasks#toggle"
  #post "/xxx/:id/abc", to: "tasks#toggle"

  
end
