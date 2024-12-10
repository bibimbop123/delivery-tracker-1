Rails.application.routes.draw do
  resources :deliveries
  devise_for :users

  # READ
  root "deliveries#index"

  # CREATE
  post("/insert_delivery", { :controller => "deliveries", :action => "create" })


  get("/deliveries/:path_id", { :controller => "deliveries", :action => "show" })

  # UPDATE

  post("/modify_delivery/:path_id", { :controller => "deliveries", :action => "update" })

  # DELETE
  get("/delete_delivery/:path_id", { :controller => "deliveries", :action => "destroy" })

  #------------------------------

end
