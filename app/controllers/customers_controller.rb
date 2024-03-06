class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end
    def alphabetized
        @list = Customer.order(:fname)
    end
end
