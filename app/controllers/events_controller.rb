class EventsController < ApplicationController
  def create
    @event = Event.new(params[:name, :description, :start_date, :event_venue_id])
    if @event.save
      render json: @event
    end
  end
    
  def destroy
    @event.destroy
    render json: @event
  end
    
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
    else
      render json: @event
    end
  end
  
end
