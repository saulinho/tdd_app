class CustomersController < ApplicationController
  def index
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to customers_path, notice: "Cliente cadastrado com sucesso!"
    else
      render :new, status: :unprocessable_entity
      puts "Retorno #{response.status}"
    end
  end

  private

  def customer_params
    params.expect(customer: [ :name, :email, :phone, :avatar, :smoker ])
  end
end
