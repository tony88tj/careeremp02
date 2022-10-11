class Employee < ApplicationRecord
  def employee_id_less
    employeeid.from(6)
  end

  def self.employee_search(search)
    if search 
      array_desc = Array.new(search.split.size, "lname Like ?").join(" AND ")
      searchArray = ([array_desc,  ("%" + search.split.join("%,%") + "%").split(",")]).flatten
      Employee.where(searchArray)
    else
      #Employee.where.not(status: "not").order(:employee_id_less)
      Employee.order(:employee_id_less)
    end
  end
end
