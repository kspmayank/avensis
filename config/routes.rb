Rails.application.routes.draw do
  get 'log_out' => 'sessions#destroy', :as => 'log_out'
  get 'log_in' => 'sessions#new', :as => 'log_in'
  get 'sign_up' => 'users#new', :as => 'sign_up'
  resources :users
  resources :sessions

  get 'event/show'

  get 'event/new'

  get 'event/create'

  get 'event/edit'

  get 'event/updates'

  get 'event/addupdates'

  get 'register/new'

  post '/register/create' => 'register#create'

  get 'welcome/index'

  get '/technical' => 'welcome#technical'

  get '/funncreative' => 'welcome#funncreative'

  get '/quiz' => 'welcome#quiz'

  get '/robotics' => 'welcome#robotics'

  get '/literary' => 'welcome#literary'

  get '/photography' => 'welcome#photography'

  get '/design' => 'welcome#design'

  get '/creativity' => 'welcome#creativity'






  get '/anonymous' => 'event#Anonymous'

  get '/hackathon' => 'event#Hackathon'

  get '/encodedbeans' => 'event#EncodedBeans'

  get '/onlinecoding' => 'event#CodeTillYouDie'

  get '/algojam' => 'event#AlgoJam'

  get '/brainstorm' => 'event#Brainstorm'

  get '/techvilla' => 'event#Techvilla'

  get '/gaming' => 'event#LANGaming'

  get '/androidgaming' => 'event#AndroidGaming'

  

  

  get '/designing' => 'event#Google_Doodle'

  

  get '/uc' => 'event#UltimateChallenge'

  get '/treasurehunt' => 'event#TreasureHunt'

  get '/foodgram' => 'event#FoodGram'

  get '/karaoke' => 'event#Karaoke'

  get '/galisports' => 'event#Galisports'

  # get '/VigyaFun' => 'event#VigyaFun'

  get '/ecomaniac' => 'event#Ecomaniac'

  get '/lasertrap' => 'event#LaserTrap'

  get '/movielicious' => 'event#Movielicious'

  


  get '/robowar' => 'event#Robowar'

  get '/roborugby' => 'event#RoboRugby'

  get '/carnage' => 'event#Carnage'

  get '/lfr' => 'event#LFR'

  get '/robomaze' => 'event#RoboMaze'

  get '/junkyard' => 'event#Junkyard'

 

  get '/generalquiz' => 'event#GeneralQuiz'

  get '/indiaquiz' => 'event#IndiaQuiz'

  get '/biztechquiz' => 'event#BizTechQuiz'

  get '/entertainmentquiz' => 'event#EntertainmentQuiz'

  get '/delhiquiz' => 'event#DelhiQuiz'






  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end