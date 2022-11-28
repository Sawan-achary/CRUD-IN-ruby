class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      # user ||= User.new # guest user (not logged in)


      # if user.admin?
      #   can :manage, :all
      # else
      #   can :create, Post
      #   can :read, :all
      # end



    #  if user.admin?
    #   can :manage, :all
      
    #  elsif user.moderator?
      
    #   can :update, Post
    #   # can :destroy, Post
    #  else
      
    #   can :create, Post
    #   can :read, :all
      
    #  end



    if user.admin?
      can :manage, :all
        # cannot :manage, :all
      else
        can :update, Post do |post|
          post.user == user
        end
        # can :destroy, Post do |post|
        #   post.user == user
        # end
         can :create, Post
        can :read, :all
      end
    



    # if user.admin? && .moderator?
    #     can :manage, :all
    #    else
    #     can :create, Post
    #     can :read, :all
        
    #    end
  




      # if user.moderator?
      #   can :manage, :all
      # else
      #   can :read, :all
      # end
       
        
      
  end
  
end



# can :update, Post do |post|
#   post.user == user  #####only update by the user who post that msg
# end
# can :destroy, Post do |post|
#   post.user == user   #####only delete by the user who post that msg