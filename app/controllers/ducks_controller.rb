class DucksController < ApplicationController
  before_action :locate_duck, only: [:show, :edit, :update]

  def index
    @ducks = Duck.all
  end

  def show
  end

  private

      def locate_duck
        @duck= Duck.find(params[:id])
      end 

end
