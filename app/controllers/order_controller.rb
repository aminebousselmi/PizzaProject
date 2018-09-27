class OrderController < ApplicationController
     skip_before_action :verify_authenticity_token, :only => [:index, :show, :create]
      # GET /order/1
      # GET /order/1.json
      def show
      end
end
