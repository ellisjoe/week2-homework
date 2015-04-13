Rails.application.routes.draw do

    get '/greet' => 'greet#index'

    get '/contact' => 'contact#index'
    get '/contact_submitted' => 'contact#submitted'

    get '/rps' => 'rps#index'
    get '/rps/play' => 'rps#play'

    get '/dice' => 'dice#index'
    get '/dice/roll' => 'dice#roll'

end
