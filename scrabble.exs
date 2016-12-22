#Day 12 - Scrabble
defmodule Scrabble do
  @doc """
  Calculate the scrabble score for the word.
  """
  @spec score(String.t) :: non_neg_integer
  def score(word) do
    word 
      |> String.trim
      |> String.upcase
      |> String.split("", trim: true)
      |> getScore
  end
  
  #defp getScore([head | []]), do: head
  defp getScore([]), do: 0 
  defp getScore([head | tail]) do
    case head do
      head when head in ["A","E","I","O","U","L","N","R","S","T"] -> 1
      head when head in ["D","G"] -> 2
      head when head in ["B","C","M","P"] -> 3
      head when head in ["F","H","V","W","Y"] -> 4
      "K" -> 5
      head when head in ["J","X"] -> 8
      head when head in ["Q","Z"] -> 10
      _ -> 0
    end + getScore(tail)
  end
end
