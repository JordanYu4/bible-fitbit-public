class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= OathUser.find(session[:user_id]) if session[:user_id]
    @pending_challenge_requests ||= ChallengeReadEntry.where(user: @current_user, accepted: nil)
  end
end
