require 'faker'

 # Create a member
 member = User.new(
   name:     'Member User',
   email:    'valeriemettler@gmail.com',
   password: 'helloworld',
 )
 member.skip_confirmation!
 member.save

puts "Seed finished"