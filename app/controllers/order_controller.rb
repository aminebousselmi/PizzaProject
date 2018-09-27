class OrderController < ApplicationController
     skip_before_action :verify_authenticity_token, :only => [:index, :show, :create]
      # GET /order
      # GET /order.json
      def show
      end
  
       
       def index
       end
  
       def create
      @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.json { render :show, status: :created, location: @order }
      else
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end
// -- //        
end
