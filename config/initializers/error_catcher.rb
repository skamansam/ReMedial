#class ActionController::Base
#  def rescue_action_in_public(exception)
#    case exception
#      when ActiveRecord::RecordNotFound
#      when ActiveRecord::RecordInvalid
#      when ActionController::RoutingError
#      when ActionController::UnknownController
#      when ActionController::UnknownAction
#      when ActionController::MethodNotAllowed
#        render :template => "error404", :layout => "error404", :status => "404"
#    else
#        render :template => "error500", :layout => "error500", :status => "500"
#    end
#  end
#end