Rails.application.routes.draw do
  root "feedbacks#index"
  resources :feedbacks do
    member do
      post :like
    end
  end
end
