class UsersController < ApplicationController
    
    def index
        @users = User.all
        @user = User.new
    end

    def new
        @choru = Choru.new
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

    def show
        @user = User.find(params[:id]) 
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
