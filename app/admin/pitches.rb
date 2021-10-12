#ActiveAdmin.register Pitch do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
#end

#Setting up Strong Parameters
#To prevent ActiveModel::ForbiddenAttributesError in Admin::IdeasController
#update exception when updating a model you have to use the permit_params method to define which attributes may be changed:
ActiveAdmin.register Pitch do
  permit_params :name, :description, :image
end