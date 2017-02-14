Rails.application.routes.draw do
  get 'api/book' => 'book#index'
  post 'api/book' => 'book#create_book'
end