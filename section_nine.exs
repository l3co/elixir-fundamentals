# Process PingPong
## process 1 will send a ping message to process 2
## process 2 will send a ping message to process 1
## do this 11 times

# 1 . Player_1 --PING--> Player_2
# 2 . Player_1 <--PONG-- Player_2
# 3 . Player_1 --PING--> Player_2
# ...
# ...
# 10. Player_1 <--PONG-- Player_2
# 11. Player_1 --PING--> Player_2

# create PingPong module

defmodule PingPong do
  def ready do
    receive do
      {sender, action, 11} ->
        hit_to(sender, :pong, turn + 1)
        ready
    end
  end

  def hit_to(opponent_id, action, turn) do
    IO.puts "#{turn}. hit_to #{inspect opponent_id} #{inspect action}"
    send(opponent_id, {player_pid(), action, turn})
  end

  defp player_pid do 
    self
  end
end

# ready function to receive messages from other processes
# handle each message
# send message to processes
# switch between ping/pong

# 1 get main process PID
player_1 = self
# 2 get spawned process PID
player_2 = spawn(PingPong, :ready, [])
# 3 inspect PID values
IO.puts "player_1: #{inspect player_1}"
IO.puts "player_2: #{inspect player_2}"
# 4 send message from main process to spawned process
PingPong.hit_to(player_2, :ping, 1)
# 5 start message receiver on main process
PingPong.ready()