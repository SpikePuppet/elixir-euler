defmodule PrimeFactorisation do
  # Trial Division - We test every number from 2 up to the limit to see if it is a factor of n,
  # and get the highest prime from that list.
  def trial_division(1, factor, factors) do
    factors
  end

  def trial_division(number, factor, factors) when number > 1 do
    if rem(number, factor) == 0 do
      trial_division(div(number, factor), factor, [factor | factors])
    else
      trial_division(number, factor + 1, factors)
    end
  end
end

n = 600851475143
f = 2
a = []

PrimeFactorisation.trial_division(n, f, a)
|> Enum.each(&IO.puts/1)
