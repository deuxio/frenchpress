ActiveAdmin.register Author do
  permit_params :name, :twitter, :email, :status, :score
end
