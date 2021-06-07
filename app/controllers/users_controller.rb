class UsersController < ApplicationController
    
    def index
        @users = User.all
        @user = User.new
    end

    def edit
        @choru = Choru.find(params[:id)
    end

    def show
        @user = User.find(params[:id]) 
    end
    

end
