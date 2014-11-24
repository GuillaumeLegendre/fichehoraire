class InterventionsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @interventions = Intervention.where(user_id: current_user.id)
  end

  def new
    @intervention = Intervention.new
    @clients = Client.all
  end

  def create
    i = params[:intervention]
    i[:user_id] = current_user.id
    i[:datetime] = Date.parse(i[:datetime])
    i[:nb_hour] = i[:nb_hour_h].to_f + i[:nb_hour_m].to_f

    @intervention = Intervention.new(inter_params)
    puts @intervention.inspect
    respond_to do |format|
      if @intervention.save
        format.html { redirect_to(new_intervention_url, :notice => 'L\'intervention a bien été enregistrée' ) }
      else
       format.html { redirect_to(new_intervention_url , :alert => 'Une erreur c\'est produite lors de l\'enregistrement') }
      end
    end
  end

  def get_site
    @sites = Site.where(client_id: params[:client_id])
    render :json => @sites
  end

  def get_mission
    @missions = Mission.where(site_id: params[:site_id]).order('name ASC')
    render :json => @missions
  end

  private

  def inter_params
    params.require(:intervention).permit(:datetime, :nb_hour, :panier, :zone, :comment, :mission_id, :user_id)
  end
end
