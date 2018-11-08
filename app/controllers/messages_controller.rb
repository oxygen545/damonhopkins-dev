class MessagesController < InheritedResources::Base

	def show
  		redirect_to "/thanks"	
  	end
	def edit
  		redirect_to "/"		
  	end
  	def index
  		redirect_to "/"
  	end
  private

    def message_params
      params.require(:message).permit(:username, :email, :subject, :body)
    end
end

