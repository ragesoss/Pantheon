class LoginController < Devise::OmniauthCallbacksController
  include Devise::Controllers::Rememberable
  before_action :set_auth_hash

  def mediawiki
    raise LoginError if login_failed?
    set_user_from_auth_hash

    remember_me @user
    redirect_to '/'
  end

  private

  def set_auth_hash
    @auth_hash = request.env['omniauth.auth']
  end

  def set_user_from_auth_hash
    username = @auth_hash.dig('info', 'name')
    @user = User.find_by(username: username) || User.new(username: username)
    @user.wiki_token = @auth_hash.dig('credentials', 'token')
    @user.wiki_secret = @auth_hash.dig('credential', 'secret')
    @user.save!
  end

  def login_failed?
    @auth_hash.dig('extra', 'raw_info', 'login_failed').present?
  end

  class LoginError < StandardError; end
end
