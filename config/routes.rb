Rails.application.routes.draw do
  get 'event/show'

  get 'event/new'

  get 'event/create'

  get 'event/edit'

  get 'event/updates'

  get 'event/addupdates'

  get 'register/new'

  post '/register/create' => 'register#create'

  get 'welcome/index'




  get '/Anonymous' => 'event#Anonymous'

  get '/Hackathon' => 'event#Hackathon'

  get '/EncodedBeans' => 'event#EncodedBeans'

  get '/CodeTillYouDie' => 'event#CodeTillYouDie'

  get '/AlgoJam' => 'event#AlgoJam'

  get '/Brainstorm' => 'event#Brainstorm'

  get '/Techvilla' => 'event#Techvilla'

  get '/LANGaming' => 'event#LANGaming'

  get '/AndroidGaming' => 'event#AndroidGaming'

  

  get '/DoodleDesigning' => 'event#DoodleDesigning'

  

  get '/UltimateChallenge' => 'event#UltimateChallenge'

  get '/TreasureHunt' => 'event#TreasureHunt'

  get '/FoodGram' => 'event#FoodGram'

  get '/Karaoke' => 'event#Karaoke'

  get '/Galisports' => 'event#Galisports'

  get '/VigyaFun' => 'event#VigyaFun'

  get '/Ecomaniac' => 'event#Ecomaniac'

  get '/LaserTrap' => 'event#LaserTrap'

  


  get '/Robowar' => 'event#Robowar'

  get '/RoboRugby' => 'event#RoboRugby'

  get '/Carnage' => 'event#Carnage'

  get '/LFR' => 'event#LFR'

  get '/RoboMaze' => 'event#RoboMaze'

  get '/Junkyard' => 'event#Junkyard'

 

  get '/GeneralQuiz' => 'event#GeneralQuiz'

  get '/IndiaQuiz' => 'event#IndiaQuiz'

  get '/BizTechQuiz' => 'event#BizTechQuiz'

  get '/EntertainmentQuiz' => 'event#EntertainmentQuiz'

  get '/DelhiQuiz' => 'event#DelhiQuiz'





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
