class Toko < ApplicationRecord
	
	validates :nama_toko,presence: {message: 'Harus di isi'}
	validates :alamat_toko,presence: {message: 'Harus di isi'}
	validates :nama_toko,presence: true
	# validates :almaat_toko,presence: true
	# validates :nama_toko,presence: true
	validates :nama_toko,length: {maximum: 10,message: 'Maksimum 10 karakter'}
	# validate :custom_validate
	# # validate :false
	# # validates :nama_toko,inclusion: {in: ['good','bad','enough']}
	#  # validates :nama_toko,format: {with:  /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/}
	#  # validates :nama_toko, :format => {:with => /^[([a-z]|[A-Z])0-9_-]{6,40}$/, message: "must be at least 6 characters and include one number and one letter."}
	# # `validates :nama_toko,uniqueness: true
	 
	# # def custom_validate
	# # 	if nama_toko.length >= 10
	# # 		errors.add(:data,'Jumlah Lebih dari 10 jon')
	# # 	end 
	# end

	# def false
	# 	errors.add(:nama_toko,"I could not be jump")
	# end


end
