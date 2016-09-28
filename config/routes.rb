FitterHappier::Engine.routes.draw do
  get '/fitter_happier' => 'heartbeat#index'
  get '/fitter_happier/site_check' => 'heartbeat#site_check'
  get '/fitter_happier/site_and_database_check' => 'heartbeat#site_and_database_check'
end
