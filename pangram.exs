#Day 14 - Pangram
defmodule Pangram do
  @doc """
  Determines if a word or sentence is a pangram.
  A pangram is a sentence using every letter of the alphabet at least once.

  Returns a boolean.

    ## Examples

      iex> Pangram.pangram?("the quick brown fox jumps over the lazy dog")
      true

  """
  @spec pangram?(String.t) :: boolean
  def pangram?(sentence) do
    down_sentence = String.downcase(sentence) 
    Enum.empty?(Enum.to_list(?a .. ?z) -- to_charlist(down_sentence))
  end
end