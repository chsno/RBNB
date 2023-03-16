class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  endw

  def create?
    true
  end

  def new?
    create?
  end


  def index?
    true
  end

  def my_flats?
    user
  end

end
