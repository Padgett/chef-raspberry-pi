#
# Cookbook Name:: raspberry-pi
# Recipe:: default

file "/etc/profile.d/raspi_config.sh" do
  action :delete
end

template "/boot/config.txt" do
  source "config.txt.erb"
end

template "/etc/inittab" do
  source "inittab.erb"
end
