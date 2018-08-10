class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    puts 'DEBUG' + '**'*20
    puts params[:locale].inspect
    puts '**'*20
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
