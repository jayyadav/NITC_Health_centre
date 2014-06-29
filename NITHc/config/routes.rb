ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
    map.connect '/hcs/rnew1', :controller => 'hcs', :action => 'rnew1'
	map.connect '/hcs/rnew2', :controller => 'hcs', :action => 'rnew2'
	map.connect '/hcs/rindex1', :controller => 'hcs', :action => 'rindex1'
	map.connect '/hcs/rindex2', :controller => 'hcs', :action => 'rindex2'
	
	
    map.connect '/hcs/create1', :controller => 'hcs', :action => 'create1'
	map.connect '/hcs/create2', :controller => 'hcs', :action => 'create2'
	map.connect '/hcs/detail', :controller => 'hcs', :action => 'detail'
	
	map.connect '/hcs/error', :controller => 'hcs', :action => 'error'
	
    map.connect '/hcs/in', :controller => 'hcs', :action => 'in'
    map.connect '/hcs/login', :controller => 'hcs', :action => 'login'
    map.connect '/hcs/new', :controller => 'hcs', :action => 'new'
	map.connect '/hc1s/new1', :controller => 'hc1s', :action => 'new1'
    map.connect '/hcs/create', :controller => 'hcs', :action => 'create'
	map.connect '/hc1s/create1', :controller => 'hc1s', :action => 'create1'
    map.connect '/hcs/index', :controller => 'hcs', :action => 'index'
	map.connect '/hc1s/', :controller => 'hc1s', :action => 'index1'
    map.connect '/hcs/:id', :controller => 'hcs', :action => 'show'
	map.connect '/hc1s/:id', :controller => 'hc1s', :action => 'show1'
	
	map.connect '/hc2s/create2', :controller => 'hc2s', :action => 'create2'
	map.connect '/hc2s/new2', :controller => 'hc2s', :action => 'new2'
	map.connect '/hc2s/', :controller => 'hc2s', :action => 'index2'
	map.connect '/hc2s/:id', :controller => 'hc2s', :action => 'show2'
	
	map.connect '/hcs/:id/edit', :controller => 'hcs', :action => 'edit'
	map.connect '/hcs/:id/update', :controller => 'hcs', :action => 'update'
	#map.connect '/hcs/:id/delete', :controller => 'hcs', :action => 'destroy'
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
