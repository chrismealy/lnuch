class SpotsController < ApplicationController
  def index
    @spots = Spot.order('count DESC,name')
    @spot = Spot.new
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
    @spot = Spot.new
  end

  def plus
    @spot = Spot.find(params[:id])
    @spot.increment!(:count)
    redirect_to spots_path, :notice  => "Added one to #{@spot.name}."
  end

  def minus
    @spot = Spot.find(params[:id])
    @spot.decrement!(:count)
    redirect_to spots_path, :notice  => "Subtracted one from #{@spot.name}."
  end

  def nix
    @spot = Spot.find(params[:id])
    @spot.update_attribute(:nixed, ! @spot.nixed)
    redirect_to spots_path, :notice  => "Toggled #{@spot.name}."
  end

  def create
    @spot = Spot.new(params[:spot])
    if @spot.save
      redirect_to spots_path, :notice => "Successfully created spot."
    else
      render :action => 'new'
    end
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def update
    @spot = Spot.find(params[:id])
    if @spot.update_attributes(params[:spot])
      redirect_to @spot, :notice  => "Successfully updated spot."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
    redirect_to spots_url, :notice => "Successfully destroyed spot."
  end
end
