Rails.application.routes.draw do
  scope path: "api" do
    resources :artists do
      resources :albums do
        resources :stocks
      end
    end
  end
end
