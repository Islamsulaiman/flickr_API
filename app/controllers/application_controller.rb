class ApplicationController < ActionController::Base
  rescue_from StandardError, with: :handle_standard_error

  private

  def handle_standard_error(exception)
    # Log the error, send an email, notify a service, etc.
    Rails.logger.error "An error occurred: #{exception.message}"
    # Redirect or render an error page
    respond_to do |format|
      format.html { render 'errors/internal_server_error', status: :internal_server_error }
      format.json { render json: { error: 'Internal Server Error' }, status: :internal_server_error }
    end
  end
end
