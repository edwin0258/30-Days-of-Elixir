#Day 16 - BracketPush
defmodule BracketPush do
  @doc """
  Checks that all the brackets and braces in the string are matched correctly, and nested correctly
  """
  @spec check_brackets(String.t) :: boolean
  def check_brackets(str) do
    _check_brackets(String.split(str,""),[])
  end
  
  defp _check_brackets([head | tail], brackets) do
    check_opposite = fn(x) ->
      if List.last(brackets) == x, do: _check_brackets(tail, List.delete_at(brackets,-1)), else: false
    end
    
    case head do
      head when head in ["{","[","("] -> _check_brackets(tail, brackets ++ [head])
      head when head in ["}"] -> check_opposite.("{")
      head when head in ["]"] -> check_opposite.("[")
      head when head in [")"] -> check_opposite.("(")
      "" -> if brackets == [], do: true, else: false
      _ -> _check_brackets(tail, brackets)
    end
  end
end