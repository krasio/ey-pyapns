#
# Cookbook Name:: ey-pyapns
# Recipe:: default
#

# Set your application name here
appname = "Your app name goes here"

if ['solo', 'util'].include?(node[:instance_role])
  execute "install pip" do
    command "sudo easy_install pip"
  end

  execute "install simplejson" do
    command "sudo pip install simplejson"
  end

  execute "install zope.interface-3.8.0" do
    command "sudo pip install zope.interface==3.8.0"
  end

  execute "install pyapns" do
    command "sudo pip install pyapns"
  end

  template "/etc/monit.d/pyapns_#{appname}.monitrc" do
    owner 'deploy'
    group 'deploy'
    mode 0644
    source "monitrc.conf.erb"
    variables({
      :appname => appname
    })
  end

  execute "monit reload" do
    action :run
  end
end
