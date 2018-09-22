class TokoController < ApplicationController

	layout :false
	def index
		# render plain: "oke"
		 @data = Toko.all
	end
	def new
		@data = Toko.new
	end
	def create
		# render plain: params.inspect
		@data = Toko.new(resource_params)
		if @data.save
			flash[:notice] ="Data telah Tersimpan"
			redirect_to toko_index_path
		else
			render 'new'
		end
	end

	def edit
		@data = Toko.find(params[:id])		
	end


	def update

		@data = Toko.find(params[:id])
		@data.update(resource_params)
		flash[:notice] = "Berhasil"

		redirect_to toko_index_path

	end

	def destroy
		data = Toko.find(params[:id])
		data.destroy
		flash[:notice] ="Berhasil Di hapus"

		render plain: 'Oke'
	end
	def show
		render plain: 'i"m show'	
	end

	private
	
	def resource_params
		params.require(:toko).permit(:nama_toko,:alamat_toko,:no_hp)
	end


end
