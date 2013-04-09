module SessionsHelper
  def sign_in(user)
    cookies.permanent[:signed_in_user_id] = user.id
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find(cookies[:signed_in_user_id])
  end
end
