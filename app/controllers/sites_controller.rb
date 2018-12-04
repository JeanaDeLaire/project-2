# class SitesController < ApplicationController
#   before_action :set_site, only: [:show, :update, :destroy]

class SitesController < OpenReadController
  skip_before_action :authenticate, only: READ_ACTIONS
  before_action :set_site, only: [:show]
  # GET /sites
  def index
    @sites = Site.all

    render json: @sites
  end

  # GET /sites/1
  def show
    render json: @site
  end

  # POST /sites
  def create
    # @site = Site.new(site_params) #missing user_id!
    @site = current_user.sites.new(site_params)

    if @site.save
      render json: @site, status: :created, location: @site
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sites/1
  def update
    # binding.pry
    @site = current_user.sites.find(site_params[:id])

    if @site.update(site_params)
      render json: @site
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  # Keyword Search
  def keyword_search
    @keywords = sites.find(params[:keywords])
    @found_sites = Site.where(keywords: keywords)

    render json: @sites
  end

  # DELETE /sites/1
  def destroy
    @site = current_user.sites.find(params[:id])
    @site.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_site
    @site = Site.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def site_params
    params.require(:site).permit(:name, :description, :keywords)
  end
end
