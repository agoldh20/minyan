class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
  end

  def create
    @person = Person.create!(first_name: params[:first_name],
                  last_name: params[:last_name],
                  email: params[:email],
                  phone: params[:phone],
                  status: "active")

    redirect_to "/people/#{@person.id}"
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.update_attributes(first_name: params[:first_name],
                              last_name: params[:last_name],
                              email: params[:email],
                              phone: params[:phone],
                              status: params[:status])

    redirect_to "/people/#{@person.id}"
  end

  def delete
    @person = Person.find(params[:id])
    @person.delete
  end
end
