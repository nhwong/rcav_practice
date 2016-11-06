Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })
  get("/random/:lower/:upper", { :controller => "calculations", :action => "random_draw" })
  get("/payment/:rate/:years/:notional", { :controller => "calculations", :action => "calculate_payment" })
end
