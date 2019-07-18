class UserController < ApplicationController
    before_action :authenticate_user!
    def destroy
        @users=User.find(params[:id])
        @users.destroy
        flash.notice = "You have successfully Delete Record"
        redirect_to(:root) 
    end 

    def index
        @users = User.all
    end
end
