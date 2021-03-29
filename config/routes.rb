# frozen_string_literal: true

Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :stores do
      resources :additional_store_settings, only: [:create, :update, :index]
    end
  end
end