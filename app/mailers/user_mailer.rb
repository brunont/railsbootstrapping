class UserMailer < ActionMailer::Base

  default from: ADMIN_EMAIL, charset: "UTF-8", content_type: "text/html"
  
  def admin_feedback_email(email, feelings, feedback)
    @email = email
    @feelings = feelings
    @feedback = feedback
    mail(to: ADMIN_EMAIL, subject: "New feedback received for #{APP_NAME}")
  end

  def user_feedback_email(email)
    @email = email
    mail(to: @email, subject: "Thanks for your feedback")
  end

  def admin_alert_email(subject="Aviso App", message)
    @message = message
    mail(to: ADMIN_EMAIL, subject: subject)
  end
end
