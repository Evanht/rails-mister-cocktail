Rails.application.routes.draw do


  resources :cocktails, except: :index do
    resources :doses, only: [:new, :create, :destroy]
  end



  root to: "cocktails#index"

end
