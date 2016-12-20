#Day 10 - RunLengthEncoder
defmodule RunLengthEncoder do
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "HORSE" => "1H1O1R1S1E"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form.
  "1H1O1R1S1E" => "HORSE"
  """
  @spec encode(String.t) :: String.t
  def encode(string) do
    list = Regex.split ~r/([A-z])\1+|[A-z]/, string, include_captures: true
    list
    |> Enum.map(
      fn(item) ->
        if(item != "") do
          to_string(String.length(item)) <> String.first(item)
        end
      end
    )
    |> Enum.join()
  end

  @spec decode(String.t) :: String.t
  def decode(string) do
    list = Regex.split ~r/(\d)+([A-z])+/, string, include_captures: true
    list
    |> Enum.map(
      fn(item) ->
        if(item != "") do
          letter = String.last(item)
          amount = String.to_integer(Enum.join(String.split(item, "") -- [letter]))
          String.duplicate(letter, amount)
        end
      end
    )
    |> Enum.join()
  end
end