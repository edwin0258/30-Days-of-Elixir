#Day 8 - Chop
defmodule Chop do
  def guess(x, f..l) when x < div(l + f, 2) do
    IO.puts "It is #{div(l + f, 2)}"
    guess(x, f..div(l + f, 2))
  end

  def guess(x, f..l) when x > div(l + f, 2) do
    IO.puts "It is #{div(l + f, 2)}"
    guess(x, div(l + f, 2)..l)
  end

  def guess(x, f..l) when x == div(l + f, 2), do: IO.puts x
end
