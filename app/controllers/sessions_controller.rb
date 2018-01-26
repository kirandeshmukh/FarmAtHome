class SessionsController < Devise::SessionsController
  def new
    super
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.valid_password?(params[:user][:password])
      sign_in user
    end
  end
end
