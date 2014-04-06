class LawyersController < ApplicationController

  def index
  end

  def import
    Lawyer.import(params[:file])
    @lawyers = Lawyer.first(15)
    render 'show'
   end
end
