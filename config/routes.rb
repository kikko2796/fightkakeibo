Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :days do
  #search(科目明細検索)ページを追加
   #collection do
    #get :search
    #post 'days/search'
    #post 'days/searchlist' => "days#searchlist"
  #sublist(科目明細)ページを追加
    #post :sub
    #end
   #resultページを追加
    #collection do
   #get 'daysresult'
   #end

   

    #get 'days/daysubs', to: 'days#daysubs'
    #post 'days/daysubs', to: 'days#daysubslist'
  end
end
