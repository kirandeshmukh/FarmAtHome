class SessionsController < Devise::SessionsController
  def new
    super
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.valid_password?(params[:password])
      sign_in user
    end
  end
end
