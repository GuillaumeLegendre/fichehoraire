class LandingsController < ApplicationController
  def index
    @clients = Client.all
  end

  def get_site
    @sites = Site.where(client_id: params[:client_id])
    render :json => @sites
  end

  def get_mission
    @missions = Mission.where(site_id: params[:site_id])
    render :json => @missions
  end
end
