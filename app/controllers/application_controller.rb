class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def home
  end

  def current_user
    @user = User.find_by(id: session[:user_id])
  end
  
  private

    def require_login
        redirect_to "/" unless session.include? :user_id
    end

end
