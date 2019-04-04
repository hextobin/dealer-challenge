class Car < ApplicationRecord
  validates :vin, uniqueness: true

  def self.get_models()
    model_array = []
    model_array += get_model_resp('https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformake/honda?format=xml')
    model_array += get_model_resp('https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformake/subaru?format=xml')
    model_array += get_model_resp('https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformake/toyota?format=xml')
    model_array += get_model_resp('https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformake/ford?format=xml')
    model_array
  end

  def self.get_makes()
    makes_array = ["Honda", "Subaru", "Toyota", "Ford"]
  end

  def self.get_model_resp(url)
    car_model_response = HTTParty.get(url)
    parse_car_model_response = car_model_response["Response"]["Results"]["ModelsForMake"]
    car_model_array = []
    parse_car_model_response.each do |make|
      car_model_array.push(make["Model_Name"])
      car_model_array = car_model_array[0..11]
    end
    car_model_array
  end
end
