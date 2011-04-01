class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def show
    @visit = Visit.find(params[:id])
  end

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.new(params[:visit])
    if @visit.save
      redirect_to @visit, :notice => "Successfully created visit."
    else
      render :action => 'new'
    end
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  def update
    @visit = Visit.find(params[:id])
    if @visit.update_attributes(params[:visit])
      redirect_to @visit, :notice  => "Successfully updated visit."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @visit = Visit.find(params[:id])
    @visit.destroy
    redirect_to visits_url, :notice => "Successfully destroyed visit."
  end
end
