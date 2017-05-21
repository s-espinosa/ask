Rails.application.routes.draw do
  resources :questions, only: [:index]

  namespace 'api' do
    namespace 'v1' do
      resources :questions, only: [:create]
    end
  end
end
