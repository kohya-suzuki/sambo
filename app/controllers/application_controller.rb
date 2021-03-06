class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :username])
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
        # devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "ログインに成功しました" 
    else
      flash[:notice] = "ログインできませんでした。"
    end
    home_index_path
  end
  
  def after_sign_out_path_for(resource)
    if current_user
      flash[:notice] = "ログアウトしました" 
    else
      flash[:notice] = "ログインしています。" 
    end
    home_index_path
  end


  

  protected

  def configure_permitted_parameters
    added_attrs = [ :username, :email, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit  :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end



end
