class PastriesController < ApplicationController
  before_action :find_pastry, except: [:index, :new, :create, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_owner, only: [:edit, :update, :destroy]

  def index
    if params[:user_id].present?
      @user = User.find(params[:user_id])
      @pastries = @user.pastries
    else
      @pastries = Pastry.all
    end
   end

  def show
  #	@pastry = Pastry.find(params[:id])
  	
  end

  def new
  	@pastry = Pastry.new
  end

  def create
    @pastry = current_user.pastries.new(pastry_params)
  	@pastry = Pastry.new(pastry_params)
  	if @pastry.save
  		flash[:success] = "Pastry added!"
  		redirect_to root_path
  	else
  		flash[:error] = "Oops, try again"
  		render :new
  	end
  end

  def edit
  #	@pastry = Pastry.find(params[:id])

  end

  def update
  #	@pastry = Pastry.find(params[:id])
  	if @pastry.update(pastry_params)
  		flash[:success] ="Pastry updated"
  		redirect_to pastry_path(@pastry)
  	else
  		flash[:error] = "Oops, try again."
  		render :edit
  	end
  end

  def destroy
  	pastry = Pastry.find(params[:id])
  	pastry.destroy
  	flash[:sucess] = "you've destroyed '#{pastry.name}' which was a perfectly good pastry."
  	redirect_to root_path
  end

  private
  def pastry_params
  	params.require(:pastry).permit(:name, :price_in_pence, :description, :image)
  end
  
  def find_pastry
    @pastry = Pastry.find(params[:id])  

  end
end
