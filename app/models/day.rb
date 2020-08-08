class Day < ApplicationRecord
    scope :search, -> (search_params) do
        name_like(search_params[:name])
        date_like(search_params[:date])
    end

    scope :name_like, ->(name){where('name LIKE ?',"%#{name}%")if name.present? }
    scope :date_like, ->(date){where('date LIKE ?',"%#{date}%")if date.present?}
    

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