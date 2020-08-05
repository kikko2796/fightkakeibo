class Day < ApplicationRecord
   #searchメソッドの定義
   def self.search(search)
    if search
        where(['name LIKE ?', "%#{search}%"])
    else
        all
    end
   end
end