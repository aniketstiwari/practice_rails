Rails.application.routes.draw do
  resources :books do
    constraints(format: "json") do
      collection do 
        post :search
      end
    end
  end
end
