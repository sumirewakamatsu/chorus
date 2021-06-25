class ChorusController < ApplicationController
     before_action :authenticate_user!, only: [:new, :create]
     def  index
        @chorus = Choru.all
        @choru = Choru.new
    end

    def create
        choru = Choru.new(choru_params)
        choru.user_id = current_user.id
        
        if choru.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def new
        @choru = Choru.new
    end

    def show
        @choru = Choru.find(params[:id])
    end

    def edit
        @choru = Choru.find(params[:id])
    end

    def update
        choru = Choru.find(params[:id])
        if choru.update(choru_params)
            redirect_to:action => "show", :id => choru.id
        else
            redirect_to:action => "new"
        end

    end

    def destroy
        choru = Choru.find(params[:id])
        choru.destroy
        redirect_to action: :index
    end


    private
    def choru_params
        params.require(:choru).permit(:about, :image, :address, :date, :name)

    end


end
