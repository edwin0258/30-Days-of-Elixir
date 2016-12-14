#Day 5 - Words
defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence
    |> String.downcase()
    |> String.replace(~r/[:!&@$%^&,_]/, " ")
    |> String.split(" ", trim: true)
    |> Enum.reduce(%{}, fn(item, acc) -> Map.update(acc, item , 1, &(&1 + 1)) end)
  end
end
