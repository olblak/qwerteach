class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities

    user ||= User.new # guest user (not logged in)
    if user.admin? # Admin user
      can :manage, :all
    else # Non-admin user
      can :create, Gallery
      can :read, Gallery, :user_id => user.id
      can :update, Gallery, :user_id => user.id
      cannot :destroy, Gallery
      can :create, Picture
      can :read, Picture, :gallery => {:user_id => user.id}
      cannot :update, Picture
      can :destroy, Picture, :gallery => {:user_id => user.id}

      can :manage, Degree, :user_id => user.id
      cannot :create, Degree if user.type != "Teacher"

      can :create, Advert
      can :create, AdvertPrice
      can :read, Advert
      can :choice, Advert
      can :choice_group, Advert
      can :get_all_adverts, Advert

      can :read, AdvertPrice
      can :destroy, Advert, :user_id => user.id
      can :destroy, AdvertPrice, :advert => {:user_id => user.id}
      can :update, Advert, :user_id => user.id
      can :update, AdvertPrice, :advert => {:user_id => user.id}
      can :create, Degree if user.is_a? Teacher
      can :read, Degree, :user_id => user.id
      can :update, Degree, :user_id => user.id
      can :destroy, Degree, :user_id => user.id
    end
  end
end

