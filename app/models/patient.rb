class Patient < ApplicationRecord
  belongs_to :user
  has_one_attached :treatment
  def self.search_by_full_name(search)
   @names = search.split(" ")
   if @names.length == 2
     where("fName LIKE ? AND lName LIKE ?", "%#{@names[0]}","%#{@names[1]}" )
   else
     where("fName LIKE ? OR lName LIKE ?", "%#{@names[0]}","%#{@names[0]}")
   end
end 
end
