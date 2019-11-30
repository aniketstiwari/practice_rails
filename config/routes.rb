Rails.application.routes.draw do
  resources :books do
    constraints(format: "json") do
      collection do 
        post :search
      end
    end
  end

  get ':user_type', to: 'user_posts#index', param: :user_type, constraints: lambda { |req| ['abc', 'def'].include?(req.params["user_type"]) }, as: :custom_posts
end
