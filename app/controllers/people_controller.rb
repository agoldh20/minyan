class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def attending
    @people = Person.all
    @people = @people.order(:name)
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

  def update
    @person = Person.find(params[:id])
    @person.update(attending: true)

    redirect_to '/confirmed'
  end

  def confirmed
    @people = Person.where(attending: true)
  end

end
