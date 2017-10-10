ActiveAdmin.register News do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :image, :announcement, :body
  form(:html => { :multipart => true }) do |f|
    f.inputs "Новость" do
      f.input :title
      f.input :image, :as => :file
      f.input :announcement
      f.input :body #, as: :html_editor
    end
    f.actions
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
