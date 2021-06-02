class Restaurant < ApplicationRecord

  @category = ["chinese", "italian", "japanese", "french", "belgian"]

 has_many :reviews, dependent: :destroy

 validates :name, :address, :category, presence: true
 validates :category, :inclusion=> { :in => @category }

end
