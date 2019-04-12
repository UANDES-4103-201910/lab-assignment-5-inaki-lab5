Rails.application.routes.draw do
  
  post '/users', to: 'users#create'
  post '/events', to: 'events#create'
  post '/event_venues', to: 'event_venues#create'
  post '/tickets', to: 'tickets#create'

  delete '/users', to: 'users#destroy'
  delete '/events', to: 'events#destroy'
  delete '/event_venues', to: 'event_venues#destroy'
  delete '/tickets', to: 'tickets#destroy'

  patch '/users', to: 'users#update'
  patch '/events', to: 'events#update'
  patch '/event_venues', to: 'event_venues#update'
  patch '/tickets', to: 'tickets#update'




end
