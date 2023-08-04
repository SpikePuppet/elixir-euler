defmodule Divisible do
  def is_divisible_by_three_or_five(number) do
    rem(number, 3) == 0 || rem(number, 5) == 0
  end
end

1..999 |> Enum.filter(&Divisible.is_divisible_by_three_or_five/1) |> Enum.sum() |> IO.puts()
