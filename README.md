# Just a dealer code challenge

Welcome!  Thank you for taking the time to complete this code challenge!

## Setup
1. Fork this repo
1. Run `bundle install`
1. Run `rails db:setup`
1. Commit changes for the stories below to your fork
1. Submit a pull request to this repo

## Tasks:

Our car dealership has a simple rails app that they've been using to manage their staff and inventory. It's been working well, but there a few bugs, and a few new features that we'd like added to our app. Please complete the following:

1 - An inventory manager mistakenly added the same VIN to two different vehicles. 

  Acceptance criteria:
  * You should only be able to add a VIN once to the database

2 - Managing the vehicle inventory has presented some problems since there are no rules around the data entered. Please normalize the data on the cars model that should not be a text field.

  Acceptance criteria:
  * Dropdowns for year, make, and model
  * It is not necessary to build a UI for these fields
  * Bonus: Use a public data source like [https://vpic.nhtsa.dot.gov/api/](https://vpic.nhtsa.dot.gov/api/) to populate this data


3 - Management would like to be able to track the list price of each vehicle.

  Acceptance criteria:
  * Add the ability to enter the list price for a vehicle

4 - Management would like the ability to track sales.

  Acceptance criteria:
  * The sale should track which staff member sold the vehicle
  * The sale should include the actual sale price of the vehicle
  * Staff should be able to see a list of all sold vehicles
  * Staff should be able to see a list of all available vehicles

5 - The dealership has an ongoing competition between staff member showcasing the person who has sold the most blue cars.

  Acceptance criteria:
  * A card on the home page titled: "Top Salesperson"
  * The body of the card should have the name of the person who has sold the most blue cars
