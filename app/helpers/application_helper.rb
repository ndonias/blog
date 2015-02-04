module ApplicationHelper
	def current_user
  	session[:user_id] ? User.find(session[:user_id]) :nil
  	# if session[:user_id]
  	# 	User.find(session[:user_id])
  	# else
  	# 	nil
  	# end
  end
end
