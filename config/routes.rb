Rails.application.routes.draw do
  get '/apontamentos/novo', to: 'apontamentos#novo', as: 'novo_apontamento'
  post '/apontamentos', to: 'apontamentos#criar', as: 'criar_apontamento'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
