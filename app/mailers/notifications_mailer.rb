class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@youdomain.dev"
  default :to => "fakespam9989@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => message.subject)
  end

end