defmodule Cars do
  def add(item, items), do: [item | items]

  def remove(item, items) do
    List.delete(items, item)
  end
end

cars = [:ford, :nissan, :honda]

IO.puts("=================================")
IO.puts("Add new car")
cars = Cars.add(:fiat, cars)

IO.puts("=================================")
IO.puts("List all cars in list")

for car <- cars do
  IO.puts(car)
end

IO.puts("=================================")
IO.puts("Remove car in list of cars")
cars = Cars.remove(:ford, cars)

for car <- cars do
  IO.puts(car)
end
