class EventVenuesController < ApplicationController
  def create
      @Event_venue = Event_venue.new(params[:name, :address, :capacity])
      if @Event_venue.save
        render json: @Event_venue
      end
  end
    
  def destroy
      @Event_venue.destroy
      render json: @Event_venue
    end
    
  def update
    @Event_venue = Event_venue.find(params[:id])
    if @Event_venue.update(Event_venue_params)
    else
      render json: @Event_venue
    end
  end
  
end
