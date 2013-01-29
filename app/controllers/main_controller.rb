# encoding: utf-8
class MainController < ApplicationController

  # GET /
  def home
  end

  # GET /about
  def about
  end

  # POST /feedback
  def feedback
    # Tell the UserMailer to send admins the feedback email
    UserMailer.admin_feedback_email(params[:email], params[:feelings], params[:feedback]).deliver

    # Also tell the UserMailer to send a thankyou email if the user left a valid email address
    UserMailer.user_feedback_email(params[:email]).deliver if params[:email]

    respond_to do |format|
      format.html { redirect_to :back, notice: 'Thanks for your feedback.' }
      format.json { head :no_content }
    end
  end

end