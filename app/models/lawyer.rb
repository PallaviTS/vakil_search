class Lawyer < ActiveRecord::Base
  attr_accessible :lawyer_code, :service_code, :charges, :lawyer_name, :years_of_exp, :location, :avg_rating
end
