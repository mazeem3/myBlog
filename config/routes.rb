Rails.application.routes.draw do
  root 'blogs#index'
  get 'blogs/new' => 'blogs#new', as: :new_blog
  get 'blogs/:id' => 'blogs#show', as: :blog
  get 'blogs/:id/edit' => 'blogs#edit', as: :edit_blog
  patch 'blogs/:id' => 'blogs#update'
  post 'blogs' => 'blogs#create'
  delete 'blogs/:id' => 'blogs#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
