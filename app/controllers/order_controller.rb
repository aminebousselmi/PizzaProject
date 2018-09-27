class OrderController < ApplicationController    
      skip_before_action :verify_authenticity_token, :only => [:create]
def create 
    p "orderController"
    @name = params[:name]
    @adress = params[:adress]
    p @adress
    @pizzas = params[:pizzas]
    newOrder = Order.new(:name => @name, :adress => @adress)
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
end
