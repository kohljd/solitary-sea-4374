Rails.application.routes.draw do
  root 'welcome#index'
  get 'search', to: 'search#index'
end

  #  Prefix Verb   URI Pattern           Controller#Action
  #    root GET    /                     welcome#index
  #  search GET    /search(.:format)     search#index
