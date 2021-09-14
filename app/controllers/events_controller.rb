class EventsController < ApplicationController
  def index
    events = Event.all 
    render json: events
  end
  def create
    event = Event.create(event_params)
    render json: event
  end

  def event_params
    params.require("event").permit(:name, :event_type)
  end
  
end
