# frozen_string_literal: true

Rails.application.routes.draw do
  root 'index#input'
  post 'index/output'
  get 'index/input'
  get 'index/output'
  get 'index/show'
  resources :polyndroms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
