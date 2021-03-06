class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      redirect_to event_path(@event)
    else
      render new
    end
  end

  private

  def event_params
    params.require(:event).permit(%i[name description date address])
  end
end
