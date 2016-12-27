#Day 15 - Anagram
defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t, [String.t]) :: [String.t]
  def match(base, candidates) do
    char_base = list(base)
    Enum.filter(candidates, &(
      char_base != list(&1) and 
      list(&1) -- char_base == [] and 
      char_base -- list(&1) == [])
    )
  end
  
  defp list(x), do: to_charlist(String.downcase(x))
end
