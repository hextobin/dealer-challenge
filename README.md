# Just a dealer code challenge

Welcome!  Thank you for taking the time to complete this code challenge!

## Setup
1. Fork this repo
1. Run `bundle install`
1. Run `rails db:setup`
1. Commit changes for the stories below to your fork
1. Submit a pull request to this repo

## Tasks:
1. An inventory manager mistakenly added the same VIN to two different vehicles. Please add the appropriate validations to ensure this doesn't happen again.
1. Inventory management has been getting confusing since there are no rules for entering data for vehicles. Please convert the appropriate fields on the cars model to collections. For the purposes of this exercise, it is not important that the data be editable from the UI.
1. Management would like to be able to track the list price of each vehicle.
1. Management would like the ability to which staff member sold a car.  Acceptance criteria for this includes:

  - Ability to track which staff member sold a vehicle
  - Ability to track the actual sale price of a vehicle
  - Ability to track that a vehicle was sold multiple times - we have very loyal customers!
  
1. The owner of the dealer loves friendly competition!  We'd like a feature on the home page that spotlights the top salesperson.  Acceptance criteria includes:

  - A card on the home page titled: "Top Salesperson"
  - The body of the card should have the name of the person who has sold the most blue cars
