Rails.application.routes.draw do
  namespace :api do
    get 'playmusic' => 'music#playmusic'
  end
end
