module CurrentUserConcern
    extend ActiveSupport::Concern # extend ActiveSupport gem in class concern

    def current_user #overriding devise method
     #super ->don't change anything i simply want the same behaviour as method i am overriding
        super || guest_user
    end

    def guest_user # it is just for order
=begin
        OpenStruct.new( name: "Guest User",
                        first_name: "Guest",
                        last_name: "User",
                        email: "guest@example.com"
                      )
=end
#=begin
        guest = GuestUser.new
        guest.name = "Guest User"
        guest.first_name = "Guest"
        guest.last_name = "User"
        guest.email = "guest@example.com"
        guest
#=end
    end
end
