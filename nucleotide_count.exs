#Day 2 - Nucleotide Count
defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do
    Enum.count(strand, fn(char) -> char == nucleotide end)
  end

  @spec histogram([char]) :: map
  def histogram(strand) do
    %{?A => count(strand,?A), ?T => count(strand,?T), ?C => count(strand,?C), ?G => count(strand,?G)}
  end
end
