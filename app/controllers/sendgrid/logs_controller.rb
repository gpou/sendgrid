class Sendgrid::LogsController < ApplicationController
  before_action :set_sendgrid_log, only: [:show, :edit, :update, :destroy]

  # GET /sendgrid/logs
  # GET /sendgrid/logs.json
  def index
    @sendgrid_logs = Sendgrid::Log.all
  end

  # GET /sendgrid/logs/1
  # GET /sendgrid/logs/1.json
  def show
  end

  # GET /sendgrid/logs/new
  def new
    @sendgrid_log = Sendgrid::Log.new
  end

  # GET /sendgrid/logs/1/edit
  def edit
  end

  # POST /sendgrid/logs
  # POST /sendgrid/logs.json
  def create
    @sendgrid_log = Sendgrid::Log.new(sendgrid_log_params)

    respond_to do |format|
      if @sendgrid_log.save
        format.html { redirect_to @sendgrid_log, notice: 'Log was successfully created.' }
        format.json { render :show, status: :created, location: @sendgrid_log }
      else
        format.html { render :new }
        format.json { render json: @sendgrid_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sendgrid/logs/1
  # PATCH/PUT /sendgrid/logs/1.json
  def update
    respond_to do |format|
      if @sendgrid_log.update(sendgrid_log_params)
        format.html { redirect_to @sendgrid_log, notice: 'Log was successfully updated.' }
        format.json { render :show, status: :ok, location: @sendgrid_log }
      else
        format.html { render :edit }
        format.json { render json: @sendgrid_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sendgrid/logs/1
  # DELETE /sendgrid/logs/1.json
  def destroy
    @sendgrid_log.destroy
    respond_to do |format|
      format.html { redirect_to sendgrid_logs_url, notice: 'Log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sendgrid_log
      @sendgrid_log = Sendgrid::Log.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sendgrid_log_params
      params.require(:sendgrid_log).permit(:email, :log_type, :time, :reason, :category, :smtp_id, :processed_string, :msg_id)
    end
end
