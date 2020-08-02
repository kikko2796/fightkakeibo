Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :days do

   #resultページを追加
    collection do
   get 'daysresult'
   end
   #subsページを追加
   collection do
    get 'dayssubs'
    end

  end

  

end
