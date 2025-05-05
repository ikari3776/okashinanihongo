Rails.application.routes.draw do
  root 'homes#index'
  post 'result', to: 'homes#result'
end
