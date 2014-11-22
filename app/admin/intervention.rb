ActiveAdmin.register Intervention do
  permit_params :name, :date, :nb_hour, :panier, :zone, :comment, :mission_id, :user_id


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  csv do
    column :datetime
    column("user") { |inter| inter.user.email }
    column("client") { |inter| inter.mission.site.client.name }
    column("site") { |inter| inter.mission.site.name }
    column("mission") { |inter| inter.mission.name }
    column("code chantier") { |inter| inter.mission.code_chantier }
    column :nb_hour
    column :panier
    column :zone
    column :comment
  end

end
