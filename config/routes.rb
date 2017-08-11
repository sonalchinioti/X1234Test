Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


     resources :facebook_posting
     get '/start_fb_posting' => 'facebook_posting#start_posting'


end
