#Day 9 - Raindrops
defmodule Raindrops do
  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t
  def convert(number) do
    final = [condition(number, 3, "Pling"), condition(number, 5, "Plang"), condition(number, 7, "Plong")]
    if(Enum.join(final) == "", do: to_string(number), else: Enum.join(final))
  end
  
  defp condition(number, factor, result) do
    if rem(number,factor) == 0, do: result
  end
end