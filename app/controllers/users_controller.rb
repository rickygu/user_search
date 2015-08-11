class UsersController < ApplicationController

  # GET /users
  # GET /users.json
  def index
    @q = params[:q]
    if @q.blank?
      @users = User.paginate(:page => params[:page], :per_page => 12)
    else

      @users = User.where("name ILIKE ? or line1 ILIKE ? or line2 ILIKE ? or city ILIKE ? or state ILIKE ? or zip ILIKE ? or phone ILIKE ?", "%#{@q}%","%#{@q}%","%#{@q}%","%#{@q}%","%#{@q}%","%#{@q}%","%#{@q}%").paginate(:page => params[:page], :per_page => 12)
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :line1, :line2, :city, :state, :zip, :phone)
    end
end
