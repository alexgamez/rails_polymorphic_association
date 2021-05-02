class MagazinesController < ApplicationController
  before_action :set_magazine, only: [:edit, :update]
  
  def index
    @magazines =Magazine.all
  end

  def new
    @magazine = Magazine.new
  end

  def create
    @magazine = Magazine.new(magazine_params)

    respond_to do |format|
      if @magazine.save
        format.html do
          redirect_to(magazines_path, notice: 'Magazine was successfully created.')
        end
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
   
  end

  def update
    @magazine.assign_attributes(magazine_params)

    respond_to do |format|
      if @magazine.save
        format.html do
          redirect_to(magazines_path, notice: 'Magazine was successfully updated.')
        end
      else
        format.html { render action: "edit"}
      end
    end
  end

  private

  def magazine_params
    params.require(:magazine).permit(:title, :target_audiences, :description)
  end

  def set_magazine
    @magazine = Magazine.find(params[:id])
  end
end
