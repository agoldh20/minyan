class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def attending
    @people = Person.all
  end
end
