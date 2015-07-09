class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: 'Airport'
  belongs_to :to_airport, class_name: 'Airport'

  has_many :bookings

  def self.search(params)
    if params[:search]
      Flight.where(from_airport_id: params[:from], to_airport_id: params[:to])
    end
  end
end
