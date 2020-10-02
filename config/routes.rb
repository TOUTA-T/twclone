Rails.application.routes.draw do
  get'clones',to:'clones#index'
  resources:clones
end
