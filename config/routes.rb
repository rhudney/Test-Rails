require './lib/tasks/api_version_constraint.rb'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # www.meusite.com.br/users
  # namespace :api, defaults: {format: :json}, path "/" do

  # www.meusite.com.br/api/users
  # namespace :api, defaults: {format: :json} do

  # api.meusite.com.br/users
  #namespace :api, defaults: {format: :json}, constraints: {subdomain: 'api'}, path "/" do

  # www.meusite.com.br/api/users
  namespace :api, defaults: {format: :json}, path: "/" do
    namespace :v1, path: "/", constraints: ApiVersionConstraint.new(version: 1, default: true) do
    end
  end

end
