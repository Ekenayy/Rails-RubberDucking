class DucksController < ApplicationController
  before_action :locate_duck, only: [:show, :edit, :update]

  def index
    @ducks = Duck.all
  end

  def show
  end

  def new
    @duck = Duck.new
  end 

  def create
    duck = Duck.create(duck_params)

    if duck.valid?
      redirect_to duck_path(duck)
    elsif duck.errors
      my_errors = duck.errors.full_messages
      redirect_to new_duck_path
    end 

  end 

    private
      
      def duck_params
        params.require(:duck).permit(:name, :description, :student_id)
      end 

      def locate_duck
        @duck= Duck.find(params[:id])
      end 

end
