ActiveAdmin.register User do
  permit_params :admin, :email
end
