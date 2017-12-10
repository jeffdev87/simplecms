# We've changed the table's name in the migration to admin_users
# need to synchronize with rails patterns
class AdminUser < ApplicationRecord
    #self.table_name = "admin_users"
    #when inheriting from ApplicationRecord
    #we get access to all columns directly
    #no need to write the acessors

    # short-hand way for setter/getter
    att_accessor :first_name

    # complex way
    def last_name
        @last_name
    end

    def last_name=(value)
        @last_name = value
    end    
end
