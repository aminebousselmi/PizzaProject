class OrderController < ApplicationController
     skip_before_action :verify_authenticity_token, :only => [:index, :show, :create]
      # GET /order
      # GET /order.json
      def show
      end
end
