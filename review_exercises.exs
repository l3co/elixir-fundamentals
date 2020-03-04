defmodule Person do
  def add(person, persons), do: [persons | person]
  def remove(person, persons), do: List.delete(persons, person)
end

defmodule PersonList do
  def list_top(list, number) when number == 0, do: print_person(list, number)

  def list_top(list, number) do
    print_person(list, number)
    list_top(list, number - 1)
  end

  defp print_person(list, number), do: Enum.at(list, number) |> IO.puts()
end

list =
  Person.add([], :leandro)
  |> Person.add(:bruno)
  |> Person.add(:marcos)
  |> Person.add(:junior)

PersonList.list_top(list, 3)
