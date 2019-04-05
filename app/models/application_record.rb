class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def test1()
    "strung"
  end
end
