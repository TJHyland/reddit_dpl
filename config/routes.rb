Rails.application.routes.draw do
  # root route
    # controller#action 
  root 'subs#index'

  # resources
    # resources :controller
    resources :subs do
      resources :topics
    end

    resources :topics do
      resources :comments
    end
    
    # only: [:index, :show]
    # can also do except: [:routes]
    # generates all necessary routes/prefixes
    # http://localhost:3000/rails/info/routes

  # custom routes
    # http verb 'controller/action', as: bananas
    # get '/edit', to: 'subs#edit'
    # get '/show', to: 'subs#show'
    # get '/subs/:id' to: 'subs#destroy'


    # /subs/1/topics/1
    # /subs/:sub_id/topics/:id
end
