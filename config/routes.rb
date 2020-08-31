Rails.application.routes.draw do
  get '', to: 'apps#index'
  resources :apps do
    collection do
      post :confirm
    end
  end
end
