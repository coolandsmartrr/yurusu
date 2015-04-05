Rails.application.routes.draw do
  root to: 'home#index'

  get 'welcome/index'
  patch 'welcome/count_up'
end
