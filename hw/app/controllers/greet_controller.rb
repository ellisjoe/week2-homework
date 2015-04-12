class GreetController < ApplicationController
    def index
        @salutation = "Hello"
        @salutation = params["salutation"] if params["salutation"]
    end
end
