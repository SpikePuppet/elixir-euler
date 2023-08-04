require Integer

defmodule EvenFibonacci do
  def fibonacci(limit, list) do
    last_num = List.last(list) 
    if last_num >= limit do
      list
    else
      new_list = list ++ [Enum.take(list, -2) |> Enum.sum()]
      fibonacci(limit, new_list)
    end
  end
end

EvenFibonacci.fibonacci(4_000_000, [1, 2])
|> Enum.filter(&Integer.is_even/1)
|> Enum.sum()
|> IO.puts()
