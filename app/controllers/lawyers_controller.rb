class LawyersController < ApplicationController

  def index
  end

  def import
    Lawyer.import(params[:file])
    render 'show'
   end
   def show

   end
end
