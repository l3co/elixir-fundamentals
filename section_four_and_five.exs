# declare string and using interpolation

car_models = "ford"
IO.puts("Car model is #{car_models}")

# create numeric types

car_age = 10
car_fuel = 10.5

IO.puts("Car model is #{car_models} car age is #{car_age} and car fuel is #{car_fuel}")

# check car age

IO.puts("car age is ten, isn't ? Yes is #{^car_age = 10}")

IO.puts("================================================")

# anonymous function

is_full = fn fuel -> fuel == 10.5 end

IO.puts("The car is full? #{is_full.(car_fuel)}")

IO.puts("================================================")

# map touple from touple

{ford, yunday, fiat} = {10, 20, 30}

IO.puts("ford is #{ford}")

IO.puts("================================================")

# create atom type

field = :name

IO.puts("Print atom #{field}")

IO.puts("================================================")

# create list and print each element 

names = ["leandro", "gabriel", :juliana, :leo]

Enum.each(names, fn name -> IO.puts("---> #{name}") end)

for name <- names do
  IO.puts("========> #{name}")
end

IO.puts("================================================")

# create a map 

person = %{name: "leandro", age: 27}
IO.puts("Person name is #{person.name} or #{person[:name]}")

IO.puts("================================================")

# create a list of map 

names = [{:name, "bruno"}, {:name, "marcos"}]

IO.puts(Keyword.values(names))

IO.puts("================================================")

# append one list int another list

top_phones = [:lg, :samsung, :iphone]

asia_phones = [:xaomi, :blue, :huawey]

phones = top_phones ++ asia_phones

for phone <- phones do
  IO.puts("Phone #{phone}")
end

IO.puts("================================================")

phones_minus_lg = phones -- [:lg]

for phone <- phones_minus_lg do
  IO.puts("Phone #{phone}")
end

IO.puts("================================================")

sort_list = :lists.sort(phones)

# sort phones by name
for phone <- sort_list do
  IO.puts("Phone #{phone}")
end
