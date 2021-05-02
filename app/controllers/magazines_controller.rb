class MagazinesController < ApplicationController
  include NotesHelper
  before_action :set_magazine, only: [:edit, :update, :destroy]

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

  def destroy
    @magazine.destroy

    respond_to do |format|
      format.html do
        redirect_to(magazines_path, notice: 'Magazine was successfully destroyed.')
      end
    end
  end

  private

  def magazine_params
    params.require(:magazine).permit(:title, :target_audiences, :description, notes_attributes)
  end

  def set_magazine
    @magazine = Magazine.find(params[:id])
  end
end
