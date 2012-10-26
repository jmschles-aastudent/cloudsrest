class Tour < ActiveRecord::Base
  attr_accessible :city, :date, :notes, :time, :venue
end
