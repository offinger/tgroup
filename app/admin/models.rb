ActiveAdmin.register Model do
  
  form do |f|
      f.inputs "Model" do
        
        f.input :brend_id, :as => :select, :collection => Brend.all
        f.input :name
        f.input :tip
        f.input :available
        f.input :description
        f.input :size
        f.input :photo
        

    end
        f.buttons
    end
  
end


