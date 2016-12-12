#
# Cookbook Name:: django
# Recipe:: install_dev_ver
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

packages = %w(git python3-pip)

packages.each do |pck|
  package "#{pck}"
end

git 'django-dev' do
  repository 'git://github.com/django/django'
  destination '/opt/django-dev'
  action :checkout
end

execute 'pip3 install -e /opt/django-dev'
