# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  #@theme = ''
  before_filter :get_theme_path
  
  #append_view_path("#{Rails.root}/themes/#{$THEME}")
  #@theme = self.get_theme_path
 # append_view_path  @theme
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  #session :session_key => 'remedial_session'
  helper_method :admin?
#  helper_method :get_theme_path
  
  
  rescue_from ActiveRecord::RecordNotFound, ActiveRecord::RecordInvalid, ActionController::RoutingError, ActionController::UnknownController, ActionController::UnknownAction, ActionController::MethodNotAllowed, :with => :render404
  rescue_from RuntimeError, :with => :render500

  #check to see if this is a local request or coming from the web. used for custom errors
  def local_request?
    return false
  end

  def admin?
    return (session[:username] == 'admin') ? true : false
  end

  def index
    #flash[:notice] = "Theme: "+@theme
    render :partial => 'global/checklist', :layout => 'application'
  end

  def get_theme_path
    #@user = Users.new()
    absdir = "#{Rails.root}/public/themes/"
    theme = 'default'
    if session[:username]
      user_record = User.find(:first, :conditions => ["uname = ?", session[:username]])
     # user_record = User.find(session[:username])
      theme = user_record.theme if user_record.theme != ''
      print "user -> THEME: "+absdir+theme+"\n"
    end
    unless File::exists?(absdir+theme)
      absdir = "#{Rails.root}/public/themes/default\n"
      print "exists -> THEME: "+absdir+theme
    end
    print "THEME: "+absdir+theme+"\n"
    @theme = theme
    @themedir = "/themes/"+theme+"/"
    prepend_view_path  absdir+theme
    return absdir+theme
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password


  private
  
  def render404(exception)
    @messages = exception
    render :template => "error/404", :layout => "application", :status => :not_found
  end
  def render500(exception)
    @messages = exception
    render :template => "error/500", :layout => "application", :status => 500
  end
  
end
