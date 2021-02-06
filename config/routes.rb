Rails.application.routes.draw do
  localized do
    root to: 'home#index'
    get 'example', to: 'home#example'
  end
end
