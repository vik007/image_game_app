class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :set_host_for_local_storage

  protected
  def set_host_for_local_storage
    ActiveStorage::Current.host = request.base_url if Rails.application.config.active_storage.service == :local
  end
end
