#!/usr/bin/ruby

require 'aws-sdk-ec2'
ec2 = Aws::EC2::Resource.new
ec2.instances(filters: [{name: 'tag:test', values: ['test1']}]).each do |a|
puts 'ID:  ' +a.id
puts 'State:  ' +a.state.name
puts 'AmiName:  '  +a.image.id
puts 'Private IP:  ' +a.private_ip_address 
end
