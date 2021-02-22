class HealthController < ApplicationController
  def health_check
    # check out a connection to verify that the ActiveRecord connection pool isn't exhausted
    ActiveRecord::Base.connection

    render plain: 'ok'
  end
end
