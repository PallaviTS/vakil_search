class LawyersController < ApplicationController

  def index
  end

  def import
    Lawyer.import(params[:file])
  end

  def search
    @lawyers = Lawyer.where(:service_name => params[:service_name], :location => params[:location]).all
    render 'show'
  end

end
