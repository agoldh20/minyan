class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def attending
    @people = Person.all
    @people = @people.order(:name).where(attending: false)
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

  def remove
    @person = Person.find(params[:id])
    @person.update(attending: false)

    redirect_to '/confirmed'
  end

  def reset
    @people = Person.all
    @people.update_all(attending: false)

    redirect_to '/confirmed'
  end

  def confirmed
    @people = Person.where(attending: true)
  end

end
