resource_name :pip

action :install do
  #change this from hard coded django
  execute 'pip3 install django'
end
