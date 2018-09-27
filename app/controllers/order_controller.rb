class OrderController < ApplicationController
     skip_before_action :verify_authenticity_token, :only => [:index, :show, :create]
      # GET /order
      # GET /order.json
      def show
      end
  
       # GET /pizzas
       # GET /pizzas.json
       def index
       end
       def create 
          p "ordersController"
          @nom = params[:name]
          @adresse = params[:adress]
          p @adresse
          @pizzas = params[:pizzas]
          newOrder = Order.new(:name => @nom, :adress => @adresse)
          newOrder.save
          p @pizzas
          @erros="Erros : [";
          @pizzas.each do |pizza|
        @orderPizza =Pizza.where(name: pizza).first
        if @orderPizza.nil?
          @erros= @erros+" - There is no pizza with name = "+pizza
          p @erros
          next
        end 
        p @orderPizza
        newOrderline = Orderline.new
        newOrderline.order=newOrder
        newOrderline.pizza=@orderPizza
        newOrderline.save
          end
          @erros = @erros + "]"
      end
// -- //        
end
