Rails.application.routes.draw do
  root to: 'apontamentos#novo'

  get '/apontamentos/novo', to: 'apontamentos#novo', as: 'novo_apontamento'
  post '/apontamentos', to: 'apontamentos#criar', as: 'criar_apontamento'
end
