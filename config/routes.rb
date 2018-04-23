Rails.application.routes.draw do
  # Devise
  devise_for :users

  # ダッシュボード
  root to: 'dashboard#index'

  # 映画モデル
  resources :films, only: [:index]
end
