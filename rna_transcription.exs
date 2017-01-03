#Day 17 - RNATranscription
defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna([]), do: []
  def to_rna([head | tail]) do
    transformation = case head do
      71 -> 67
      67 -> 71
      84 -> 65
      65 -> 85
    end
    [transformation | to_rna(tail)]
  end
end