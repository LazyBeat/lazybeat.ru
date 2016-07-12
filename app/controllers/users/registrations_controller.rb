class  Users::RegistrationsController < Devise::RegistrationsController
  # Because of Rails strong parameter we need to use the Registration controller Override
  # to sanitize inputs
  # Devise automatically knows wich one to use
  def new
    super
  end

  def edit
    super
  end

  def create
    super
  end

  def show
    super
  end

  def update
    super
  end



private
  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end

protected
  def after_update_path_for(resource)
    user_path(resource)
  end
end
