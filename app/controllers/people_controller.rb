class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def create
    @person = Person.create(
                            name: params[:name],
                            attending: false)
    redirect_to '/people'
  end

  def attending
    @people = Person.all
    @people = @people.order(:name)
  end
end
