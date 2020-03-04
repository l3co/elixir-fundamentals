defmodule Draw do
  def print(text, n) when n <= 0, do: IO.puts(text)

  def print(text, n) do
    IO.puts(text)
    text = "*#{text}"
    print(text, n - 1)
  end
end


Draw.print("*", 100)