class OrderController < ApplicationController
     skip_before_action :verify_authenticity_token, :only => [:index, :show]
      # GET /order
      # GET /order.json
      def show
      end
  
       
       def index
       end
  
     
  end
// -- //        
end
