class Reservation < ActiveRecord::Base
    def event_date_formatted
    event_date.strftime("%m/%d/%Y")
    end
end
