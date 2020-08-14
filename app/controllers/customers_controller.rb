class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :set_customers, onle: :download
  before_action :authenticate_admin!

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.order(:name).page params[:page]
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, flash: {success: 'Customer was successfully created.'} }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, flash: {success: 'Customer was successfully updated.'} }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, flash: {success: 'Customer was successfully destroyed.'} }
      format.json { head :no_content }
    end
  end

  def download
    respond_to do |format|
    format.pdf do
        pdf = CustomerPdf.new(@customers)
        send_data pdf.render, filename: "Relatório de Clientes.pdf",
                              type: "application/pdf",
                              disposition: :inline
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def set_customers
      @customers = Customer.all.order(:id)
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:name, :email, :phone)
    end
end
