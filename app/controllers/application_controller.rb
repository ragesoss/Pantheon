class ApplicationController < ActionController::API
  include ActionController::Cookies

  def index
    render plain: 'ohai there'
  end
end
