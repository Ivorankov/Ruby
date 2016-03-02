require '../OOP/client'
require '../OOP/admin'
include Models

client = Client.new("Jim", "jim@ruby.rb", 20, "I like trucks", 14)
puts client.to_s
admin = Admin.new("Tom", "ihavenolife@ruby.rb", 24, "I like ponies", 6)
puts admin.to_s
