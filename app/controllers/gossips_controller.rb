class GossipsController < ApplicationController
  before_action :set_gossip, only: [:show, :edit, :update, :destroy]

  # GET /gossips

  def index
    @gossips = Gossip.all
  end

  # GET /gossips/1

  def show
  end

  # GET /gossips/new
  def new
    @gossip = Gossip.new
  end

  # GET /gossips/1/edit
  def edit
  end

  # POST /gossips

  def create
    @gossip = Gossip.new(gossip_params)

    respond_to do |format|
      if @gossip.save
        format.html { redirect_to @gossip, notice: 'Gossip was successfully created.' }

      else
        format.html { render :new }

      end
    end
  end

  # PATCH/PUT /gossips/1

  def update
    respond_to do |format|
      if @gossip.update(gossip_params)
        format.html { redirect_to @gossip, notice: 'Gossip was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end

  # DELETE /gossips/1

  def destroy
    @gossip.destroy
    respond_to do |format|
      format.html { redirect_to gossips_url, notice: 'Gossip was successfully destroyed.' }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gossip
      @gossip = Gossip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gossip_params
      params.require(:gossip).permit(:anonymous_author, :content)
    end
end
