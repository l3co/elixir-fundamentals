# create new process
pid = spawn(fn -> 1 + 2 end)
# create new process, exec function and kill process
Process.alive?(pid)
# > response is false because process is dead 
main_process = self()
# > false

# send message to main process
send(self(), {:hello, "world"})

# process message

receive do
  {:hello, msg} -> msg
  {:world, _msg} -> "won't match"
end
