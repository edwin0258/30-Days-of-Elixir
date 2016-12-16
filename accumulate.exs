#Day 6 - Accumulate
defmodule Accumulate do
  @spec accumulate(list, (any -> any)) :: list
  def accumulate(list, fun) do
    Enum.map(list, fun)
  end
end
