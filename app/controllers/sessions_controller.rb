class SessionsController < Devise::SessionsController

  private

  def after_sign_out_path_for(_)
    new_user_session_path
  end
end
