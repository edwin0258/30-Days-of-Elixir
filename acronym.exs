#Day 7 - Acronym
defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string |> String.split(~r/(?=[A-Z]| [A-z])/)
    |> Enum.map(
        fn(word) ->
          word |> String.trim |> String.first
        end
       )
    |> Enum.join |> String.upcase
  end
end
