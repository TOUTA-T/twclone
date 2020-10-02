Rails.application.routes.draw do
  get'clones',to:'clones#index'
  resources:clones do
    collection do
      post :confirm
    end
  end
end
