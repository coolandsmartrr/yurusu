Rails.application.routes.draw do
  root to: 'welcome#index'
  patch 'welcome/count_up'
end
