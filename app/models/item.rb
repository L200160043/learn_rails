class Item < ApplicationRecord
	validates :nama,presence: {message: 'Harus di isi'}
	validates :deskripsi,presence: {message: 'Harus di isi'}
	validates :harga,presence: {message: 'Harus di isi'}

end
