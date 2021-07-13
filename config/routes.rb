# frozen_string_literal: true

Rails.application.routes.draw do
  resources :projects do
    resources :todos do
      resources :comments
    end
  end
end
