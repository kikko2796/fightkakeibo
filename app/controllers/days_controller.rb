class DaysController < ApplicationController
    def index
      @days = Day.all.order(year: :desc).paginate(page: params[:page], per_page: 15)
      #@days = Day.search(params[:search])
    end

    def new
        @day = Day.new
    end

    def create
        @day = Day.create(day_params)
        redirect_to days_path
    end

    def edit
        @day = Day.find(params[:id])
    end

    def update
        @day = Day.find(params[:id])
        @day.update(day_params)
        redirect_to days_path
    end

    def destroy
        @day = Day.find (params[:id])
        @day.destroy
        redirect_to days_path
    end

    def search #科目検索
        @search_params = day_search_params
        @days = Day.search(@search_params).paginate(page: params[:page], per_page: 15)
    end

    def mtotal #月ごとの集計
        
         @days = Day.where('year = ? AND month =?', params[:year], params[:month]).group(:name)
         
         @days_total = Day.where('year = ? AND month =?', params[:year], params[:month]).group(:name).sum(:value)
         hash = @days_total
         array = hash.values
         @days_sum = array.sum
         
         
         
    end

    def ytotal
        @days = Day.where('year = ?', params[:year]).group(:name)
        @days_total = Day.where('year = ?', params[:year]).group(:name).sum(:value)
        hash = @days_total
        array = hash.values
        @days_sum = array.sum
    end

    

    
    #resultページを追加
    #def result
    #end

    #searchページを追加
    #def search
        #viewのformで取得したパラメータをモデルに渡す
       # @days = Day.search(params[:search])
    #end
    #def searchlist
     #   @days = Day.search(params[:search])
    #end

    #subslistを作成
    #def dayssubslist
        #@days = Day.where('name = ? AND date >= ?',
        #params[:name], params[:date])
        #render 'days/dayssubslist'
    #end

    #def group
     #   @days = Day.group("MONTH(date)").sum(:value)
    #end

     private
      def day_params
       params.require(:day).permit(:year, :month, :name, :value, :detail)
      end

      def day_search_params
        params.fetch(:search,{}).permit(:name, :year, :month, :value, :datail)
      end

    end
