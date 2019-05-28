require 'socket'

socket = TCPSocket.new("192.168.0.24",2345)


# 4.times do
  puts socket.gets
  puts "Wow what a rude server... I'm going to say Simon"
  socket.puts "Simon"
  puts socket.gets
# end
  socket.close
