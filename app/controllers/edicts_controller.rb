class EdictsController < ApplicationController
  before_action :set_edict, only: [:show, :edit, :update, :destroy]

  # GET /edicts
  # GET /edicts.json
  def index
    @edicts = Edict.all
  end

  # GET /edicts/1
  # GET /edicts/1.json
  def show
  end

  # GET /edicts/new
  def new
    @edict = Edict.new
  end

  # GET /edicts/1/edit
  def edit
  end

  # POST /edicts
  # POST /edicts.json
  def create
    @edict = Edict.new(edict_params)

    respond_to do |format|
      if @edict.save
        format.html { redirect_to @edict, notice: 'Edict was successfully created.' }
        format.json { render action: 'show', status: :created, location: @edict }
      else
        format.html { render action: 'new' }
        format.json { render json: @edict.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edicts/1
  # PATCH/PUT /edicts/1.json
  def update
    respond_to do |format|
      if @edict.update(edict_params)
        format.html { redirect_to @edict, notice: 'Edict was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @edict.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edicts/1
  # DELETE /edicts/1.json
  def destroy
    @edict.destroy
    respond_to do |format|
      format.html { redirect_to edicts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edict
      @edict = Edict.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edict_params
      params.require(:edict).permit(:name, :start, :end, :file, :slug)
    end
end
