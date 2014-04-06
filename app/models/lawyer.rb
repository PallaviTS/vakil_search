class Lawyer < ActiveRecord::Base
  attr_accessible :lawyer_code, :service_code, :service_name,:charges, :lawyer_name, :years_of_exp, :location, :avg_rating

  def self.create_lawyer_data(list)
    Lawyer.create! list
  end

  def self.update_lawyer_data(list)
    Lawyer.find_by_lawyer_code(list['lawyer_code']).update_attributes list
  end

  def self.check(list)
    if Lawyer.find_by_lawyer_code list['lawyer_code']
      update_lawyer_data list
    else
      create_lawyer_data list
    end
  end

  def self.import_service_list(row_as_hash)
    service_list = {"Lawyer Code" => "lawyer_code", " Service Code" => "service_code", " Service Name" => "service_name", " Charges" => "charges" }
    list = Hash[row_as_hash.map {|k, v| [service_list[k], v] }]
    check list
  end

  def self.import_city_list(row_as_hash)
    city_list =  {"Lawyer Code"=>"lawyer_code", " Lawyer Name"=>"lawyer_name", " Years of Experience"=>"years_of_exp", " Location"=>"location", " Average Rating"=>"avg_rating"}
    list = Hash[row_as_hash.map {|k, v| [city_list[k], v] }]
    check list
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do | row |
      row_as_hash = row.to_hash
      import_service_list(row_as_hash)
      import_city_list(row_as_hash)
    end
  end

end
