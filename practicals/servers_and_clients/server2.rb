require 'socket'

server = TCPServer.new("192.168.0.24",2345)

socket = server.accept

# 4.times do

  socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
  name = socket.gets.chomp
  socket.puts "THAT'S A LOVELY NAME #{name}, HAHA"
# end
  socket.close
