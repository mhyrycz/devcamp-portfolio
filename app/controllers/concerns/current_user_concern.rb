module CurrentUserConcern
    extend ActiveSupport::Concern # extend ActiveSupport gem in class concern

    def current_user #overriding devise method
     #super ->don't change anything i simply want the same behaviour as method i am overriding
        super || guest_user
    end

    def guest_user # it is just for order
        OpenStruct.new( name: "Guest User",
                        first_name: "Guest",
                        last_name: "User",
                        email: "guest@example.com"
                      )
    end

end
