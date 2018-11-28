class StylesController < InheritedResources::Base
	def create
		if user_signed_in?
			@style = Style.new(params[:style].permit(:stylename, :description, :primary_font, :secondary_font, :primary_color, :secondary_color, :alt_font, :alt_color))
		else 
			redirect_to "/users/sign_in"
		end 
	end

	def show
		if user_signed_in?
			@style = Style.find(params[:id])
		else 
			redirect_to "/users/sign_in"
		end 
	end

	def edit
		if user_signed_in? 
		else 
			redirect_to "/users/sign_in"
		end 
	end
	
	def index
		if user_signed_in?
			@styles = Style.all
		else 
			redirect_to "/users/sign_in"
		end 
	end
	
	def delete
		if user_signed_in? 
			self.destroy
		else 
			redirect_to "/users/sign_in"
		end 
	end

  private

    def style_params
      params.require(:style).permit(:stylename, :description, :primary_font, :secondary_font, :alt_font, :primary_color, :secondary_color, :alt_color)
    end
end

