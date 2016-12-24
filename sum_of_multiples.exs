#Day 13 - SumOfMultiples
defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors) do
    Enum.map(factors, &(getMultiples(limit,&1,0)))
      |> Enum.join
      |> String.split(",")
      |> Enum.uniq
      |> Enum.map(&(String.to_integer(&1)))
      |> Enum.sum
  end
  
  defp getMultiples(limit, factor, i) do
    cond do
      (factor * i) < limit -> to_string(factor * i) <> "," <> to_string getMultiples(limit, factor, i+1)
      true -> 0
    end
  end
end