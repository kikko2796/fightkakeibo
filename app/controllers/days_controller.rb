class DaysController < ApplicationController
    def index
      @days = Day.all
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

    #resultページを追加
    def daysresult 
    end

    #subsページを追加
    def dayssubs
    end
    
    def group
        @days = Day.group("MONTH(date)").sum(:value)
    end

    private
    def day_params
        params.require(:day).permit(:date, :name, :value, :detail)
    end
end
