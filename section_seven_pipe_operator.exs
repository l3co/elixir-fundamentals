# fluid declaration when you have function into a function

IO.puts(String.reverse(String.upcase("leandro")))

IO.puts(
  "leandro"
  |> String.upcase()
  |> String.reverse()
)

IO.inspect(
  [0, 1, 2, 3, 4]
  |> :lists.sort()
)
