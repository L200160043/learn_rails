class ItemController < ApplicationController

	def index
		@data = Item.all	
	end
	def new
		@data = Item.new
	end

	def destroy 
		@data =Item.find(params[:id])
		@data.destroy
		flash[:notice] = "Telah dihapus"
		redirect_to item_index_path
	end

	def show 
		@data = Item.find(params[:id])
	end
	
	def create
		@data = Item.new(resource_params)
		@data.save
	

		if @data.save
			flash[:notice] = "Berhasil !"
			redirect_to item_index_path
		else
			render 'new'
		end

			
		
		# redirect_to action;('index')
		# redirect_to action:'index'
	end
	def edit
		@data =Item.find(params[:id])
	end
	def update
		@data =Item.find(params[:id])
		@data.update(resource_params)

		redirect_to item_path
	end 
	

	private
	
	def resource_params
		params.require(:item).permit(:nama,:deskripsi,:harga)
	end
	

end
