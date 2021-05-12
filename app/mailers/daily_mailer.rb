class DailyMailer < ApplicationMailer
    default form: ENV["MAIL_ADDRESS"]
    
    def notify_user
        @user=User.pluck(:email)
        mail(to: @user, subject: "everyday Bookers!yay!")
    end
end
