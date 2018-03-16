class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(
                            name: params[:name],
                            attending: false)
    redirect_to '/people'
  end

  def edit
    @person = Person.find(params[:id])
  end

  def attending
    @people = Person.all
    @people = @people.order(:name)
  end
end
