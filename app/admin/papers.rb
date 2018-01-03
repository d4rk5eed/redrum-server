ActiveAdmin.register Paper do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :title, :image, :announcement, :body, :content,
                :format, :volume, :paper_type, :genre, :cover, :publisher,
                :printing, :circulation, :price, :additional

  form(:html => { :multipart => true }) do |f|
    f.inputs "Бумажное издание" do
      f.input :title
      f.input :author
      f.input :image, :as => :file
      f.input :announcement
      f.input :content, :as => :ckeditor

      f.input :format
      f.input :volume
      f.input :paper_type
      f.input :genre
      f.input :cover
      f.input :publisher
      f.input :printing
      f.input :circulation
      f.input :price
      f.input :additional
    end
    f.actions
  end
end
