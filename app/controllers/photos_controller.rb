class PhotosController < InheritedResources::Base

	def create
		@photo = Style.new(params[:photo].permit(:page_name, :caption, :sequence, :image))
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def delete
		if user_signed_in? 
			self.destroy
		else 
			redirect_to "/users/sign_in"
		end 
	end

  private
    def photo_params
      params.require(:photo).permit(:page_name, :caption, :sequence, :image)
    end
end

