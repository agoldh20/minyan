class MinyanTrackerController < ApplicationController
  def index
    @minyans = MinyanTracker.all

    date_param = params[:date]

    if date_param
      @minyans = MinyanTracker.where(date: date_param)
    end
  end

  def new
  end

  def create
    MinyanTracker.create!(person_id: params[:person_id],
                          attending: true,
                          day: Date.today.to_s)
  end

  def show
    @minyan = MinyanTracker.find(params[:id])
  end

  def edit
    @minyan = MinyanTracker.find(params[:id])
  end

  def update
    @minyan = MinyanTracker.find(params[:id])
    @minyan.update_attributes(attending: params[:attending])
  end

  def delete
    @minyan = MinyanTracker.find(params[:id])
    @minyan.delete
  end
end
