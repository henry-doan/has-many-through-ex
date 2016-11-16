class Doctor < ApplicationRecord
	validates_presence_of :name
	
	belongs_to :appointment
	has_many :appointments, dependent: :destroy
	has_many :patients, through: :appointments
end
