class OrderCController < ApplicationController
   skip_before_action :verify_authenticity_token, :only => [:create]
  
  # POST /orderC
  # POST /orderC.json
  def create
    @order = Order.new(pizza_params)

    respond_to do |format|
      if @order.save
        format.json { render :show, status: :created, location: @pizza }
      else
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end
end
