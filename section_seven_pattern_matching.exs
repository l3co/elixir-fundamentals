defmodule Cook do
  def cook(food) when food == 0 do
    "Nothing cooking"
  end

  # function with pattern matching
  def cook(food) when is_integer(food), do: "food is a number #{food}"

  # inline function
  def cook(food) when is_atom(food), do: "food is atomic #{food}"

  def cook(food) when is_binary(food), do: "food is a number #{food}"

  def cook(type, food), do: "#{type} #{food}"
end

# default value
defmodule Car do
  def add(item \\"nissan", items), do: [item | items]
end

IO.inspect(Cook.cook(:chiken))

IO.inspect Car.add([])