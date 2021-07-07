Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :catgory, only: %i[index create destory]

    end  
  end   
end
