Rails.application.routes.draw do
  root "customers#index"
  get "customers/index"

  # Add these two new routes for Part 2:
  get "customers/alphabetized", to: "customers#alphabetized"
  get "customers/missing_email", to: "customers#missing_email"
  
  ActiveAdmin.routes(self)

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end