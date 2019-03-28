# Create some cars
Car.find_or_create_by(year: "2016", make: "Subaru", model: "WRX", vin: "ABCDE12345", color: "Blue", body_style: "Sedan")
Car.find_or_create_by(year: "2016", make: "Volvo", model: "XC60", vin: "ABCDE12345", color: "Black", body_style: "Crossover")
Car.find_or_create_by(year: "2015", make: "Honda", model: "Civic", vin: "DEFGAB12345", color: "Gray", body_style: "Sedan")
Car.find_or_create_by(year: "2007", make: "Toyota", model: "Corolla", vin: "R0LL1NG1NSTYLE", color: "Gray", body_style: "Sedan")
Car.find_or_create_by(year: "2012", make: "Toyota", model: "Prius", vin: "WHAAT3V3RBR0", color: "Black", body_style: "sedan")
Car.find_or_create_by(year: "2012", make: "Chevy", model: "Camaro", vin: "BYEBYE", color: "Silver", body_style: "Coupe")
Car.find_or_create_by(year: "2014", make: "Chevrolet", model: "Silverado", vin: "BEASTMOD3", color: "Charcoal", body_style: "Truck")

# Create some staff
Staff.find_or_create_by(first_name: "Will", last_name: "Riker")
Staff.find_or_create_by(first_name: "Tom", last_name: "Paris")
Staff.find_or_create_by(first_name: "Beverly", last_name: "Crusher")

puts "Seeds done."
