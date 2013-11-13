class Blogmailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blogmailer.register.subject
  #
  def register
    #@greeting = "Hi"
	@user = user
    #mail to: "to@example.org"
	mail(:to => user.email, :subject => "Welcome to the movie blog site")
  end
end
