class HomeController < ActionController::Base
    def index
        stats = UsersStats.request
        @workers_amount = stats['workers_amount']
        @hirers_amount = stats['hirers_amount']
    end
end

