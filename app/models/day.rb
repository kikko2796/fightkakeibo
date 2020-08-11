class Day < ApplicationRecord
    
    scope :search, -> (search_params) do

     name_like(search_params[:name])
     .year_like(search_params[:year])
     .month_like(search_params[:month]) 
    #行頭の.で繋げている
    end

    scope :name_like, ->(name) { where('name LIKE ?',"%#{name}%")if name.present?}
    scope :year_like, ->(year) { where('year LIKE ?',"%#{year}%")if year.present?}
    scope :month_like, ->(month) { where('month LIKE ?',"%#{month}%")if month.present?}

    #where('search_params[:name] LIKE ?',"%#{search_params[:name]}%") if search_params[:name].present? .where('search_params[:date] LIKE ?',"%#{search_params[:date]}%") if search_params[:date].present? 
 #searchメソッドの定義
   #def self.search(search)
    #if search
        #Day.where("name LIKE ?","%#{search}%")
        #Day.where(name: "%#{search}%").where(date: like = ?, "%#{search}%")
        #Day.where("name = ? AND date LIKE ?" , "%#{search}%" , "%#{search}%")
    #else
        #Day.all
    #end
   #end
end