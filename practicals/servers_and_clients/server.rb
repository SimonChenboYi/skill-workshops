require 'socket'

server = TCPServer.new("192.168.0.24",2345)


loop do

  socket = server.accept

  socket.puts 'What do you say?'

  they_said = socket.gets.chomp

  socket.puts "You said: #{they_said}. HAHA!"

  socket.close

  break if they_said == 'quit'

end

#localtelnet
#telnet
