# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  require 'constants'

  # Devise overriding
  def after_sign_in_path_for(user)
    user_root_path
  end

  # Devise overriding
  def after_sign_out_path_for(user)
    root_path
  end
end
