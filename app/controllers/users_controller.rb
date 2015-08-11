class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.paginate(:page => params[:page], :per_page => 15)
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  def search
    sleep 1
    @q = params[:q]
    if @q.blank?
      @users = User.paginate(:page => params[:page], :per_page => 15)
    else

      @users = User.where("name LIKE ? or line1 LIKE ? or line2 LIKE ? or city LIKE ? or state LIKE ? or zip LIKE ? or phone LIKE ?", "%#{@q}%","%#{@q}%","%#{@q}%","%#{@q}%","%#{@q}%","%#{@q}%","%#{@q}%").paginate(:page => params[:page], :per_page => 15)
    end
    
    #@users = User.paginate(:page => 2, :per_page => 30)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :line1, :line2, :city, :state, :zip, :phone)
    end
end
