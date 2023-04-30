class ApplicationController < ActionController::Base
  include Pagy::Backend

  private
  def switch_locale(&action)
    locale = current_account&.configuration_locale || params[:locale] || extract_locale_from_accept_language_header
    unless I18n.available_locales.include? locale&.to_sym
      locale = I18n.default_locale
    end
    I18n.with_locale(locale, &action)
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge(options)
  end
end
