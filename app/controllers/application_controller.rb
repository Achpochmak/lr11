# frozen_string_literal: true

class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  before_action :authenticate_with_http_token
  # protect_from_forgery with: :exception
end
