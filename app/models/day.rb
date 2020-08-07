class Day < ApplicationRecord
   #searchメソッドの定義
   def self.search(search)
    if search
        Day.where("name LIKE ?","%#{search}%")
        #Day.where(name: "%#{search}%").where(date: like = ?, "%#{search}%")
        #Day.where("name = ? AND date LIKE ?" , "%#{search}%" , "%#{search}%")
    else
        Day.all
    end
   end
end