class BoardMailer < ActionMailer::Base
  default from: "admin@board.com"

  def notify_for_a_message(options)
    options.stringify_keys!
    mail to: options["recipient_email"]
  end

  def user_banned_email(user)
    mail(:to => user.email, :subject => I18n.t(:user_banned_title))
  end

  def photo_banned_email(user)
    mail(:to => user.email, :subject => I18n.t(:photo_banned_title))
  end

end
