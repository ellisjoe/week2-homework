class ContactController < ApplicationController
    def index
    end

    def submitted
        @firstname = params["firstname"]
        @lastname = params["lastname"]
    end
end
