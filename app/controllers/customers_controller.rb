class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end
    def alphabetized
        @list = Customer.order(:fname)
    end
    def missing_email
        @missing_email = Customer.all.where(email: "")
    end
end
