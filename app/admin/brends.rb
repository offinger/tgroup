ActiveAdmin.register Brend do
  
  #form :partial => "form"
  
  # sklanja show action, ocito...
  actions :all, :except => [:show]
  
  form do |f|
      f.inputs "Details" do
        f.input :name
        f.input :photo

    end
        f.buttons
    end
  
end
