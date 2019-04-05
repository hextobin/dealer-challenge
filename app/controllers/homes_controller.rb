class HomesController < ApplicationController

  def index
    # @salesperson = Car.find_by_sql ["
    # SELECT sold_by,
    # COUNT(sold_by) AS Mode FROM cars
    # WHERE color LIKE "Blue" and available = 0
    # GROUP BY sold_by
    # ORDER BY COUNT(sold_by) DESC
    # "]
  end
  
end
