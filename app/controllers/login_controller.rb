class LoginController < ApplicationController

  def authenticate
    #User.new(params[:userform]) will create a new object of User, retrieve values from the form and store it variable @user.
    @user = User.new()
    uname=params[:loginform][:user_name]
    pwd=params[:loginform][:user_pwd]

    #flash[:notice]=uname+" : "+pwd
    valid_user=nil
    valid_user = User.find(:first,:conditions => ["uname = ?",uname])

      #if statement checks whether valid_user exists or not
    if (valid_user && valid_user.pwd && valid_user.pwd==pwd)
      #flash[:notice]="Welcome, "+valid_user.uname
      #      flash[:notice]=(valid_user.uname==uname)? "Invalid Password.":"Invalid User."
      #creates a session with username
      session[:username]=valid_user.uname
      #redirects the user to our private page.
      #redirect_to :action => 'private'
    else
      flash[:notice]="Invalid username or password"
      #redirect_to :action=> 'login'
    end
      redirect_to :back
  end

  def logout
    reset_session
    redirect_to :back
  end
  

end
