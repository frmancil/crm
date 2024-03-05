ActiveAdmin.register Customer do
  remove_filter :image_attachment
  remove_filter :image_blob

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :fname, :phone, :email, :notes, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:fname, :phone, :email, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :fname
      f.input :phone
      f.input :email
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :fname
      row :phone
      row :email
      row :notes
      row :image do |ad|
        link_to ad.image.filename, rails_blob_path(ad.image, disposition: 'attachment') if ad.image.attached?
      end
    end
  end
  
end
