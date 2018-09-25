class OrderCController < ApplicationController
   skip_before_action :verify_authenticity_token, :only => [:create]
  
  # POST /orderC
  # POST /orderC.json
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
end
