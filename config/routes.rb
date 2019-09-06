Rails.application.routes.draw do
  namespace :v1, defaults: { format: 'json' } do
    resources :markers, only: %i[index show create destroy update]
  end
end
