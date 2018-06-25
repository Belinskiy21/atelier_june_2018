module Api
  module V1
    class BaseController < ActionController::API
      before_action :check_login

      def check_login
        render( json: { Error: 'Access denied' }, status: 401 ) unless current_user
      end

    end
    #code
  end
  #code
end
