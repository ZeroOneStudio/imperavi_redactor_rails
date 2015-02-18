Rails.application.routes.draw do
  resources :redactor_images, only: [:create, :index] do
    post '/create_from_clipboard', action: 'create_from_clipboard', on: :collection
  end 
  resources :redactor_files, only: [:create, :index]
end