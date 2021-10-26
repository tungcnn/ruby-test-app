# frozen_string_literal: true

Rails.application.routes.draw do
  resources :high_scores
    root 'pages#home'
    get 'about', to: 'pages#about'
    resources :articles, only: [:show, :index, :new, :create]
end
