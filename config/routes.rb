Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get("/flexible/square/:number", {:controller => "calculations", :action => "flexible_square_5"})
get("/flexible/square_root/:number", {:controller => "calculations", :action => "flexible_square_root"})
get("/flexible/payment/:apr/:years/:principal", {:controller => "calculations", :action => "flexible_payment"})
get("/flexible/random/:number/:number2", {:controller => "calculations", :action => "flexible_random"})
get("/square/new", {:controller => "calculations", :action => "square_form"})
get("/square/results", {:controller => "calculations", :action => "square"})
get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})
get("/square_root/results", {:controller => "calculations", :action => "square_root"})
get("/payment/new/", {:controller => "calculations", :action => "payment_form"})
get("/payment/results/", {:controller => "calculations", :action => "payment"})

end
