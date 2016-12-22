#Day 11 - Sublist
defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, b) do
    cond do
      a == b -> :equal
      a == [] -> :sublist
      b == [] -> :superlist
      String.contains?(Enum.join(b), Enum.join(a)) == true and length(b -- a) == length(b) - length(a) -> :sublist
      String.contains?(Enum.join(a), Enum.join(b)) == true and length(a -- b) == length(a) - length(b) -> :superlist
      a != b -> :unequal
    end
  end
end