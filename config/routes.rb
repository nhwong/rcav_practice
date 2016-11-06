Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:number", { :controller => "square_root", :action => "calculate" })
  get("/random/:lower/:upper", { :controller => "random", :action => "draw" })

end
