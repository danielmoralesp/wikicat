Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/graph/:category', :to => 'graph#show'
      get '/category/:category', :to => 'category#show'
    end
  end

end
