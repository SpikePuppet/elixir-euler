defmodule Sieve do
  def prime(limit) do
     # Start at the lowest prime, removing multiples of that prime up until the limit
     # Then move to the next number doing the same until you have nothing but primes
     Enum.to_list(2..limit) # Start from 2, otherwise 1 will filter everything
     |> sift([])
  end

  def sift([], current_primes) do
    current_primes
  end

  def sift(range, current_primes) do
    [prime | sequence] = range
    filtered_sequence = Enum.filter(sequence, fn x -> rem(x, prime) != 0 end)
    new_current_primes = [prime | current_primes] # This combines the list quickly
    sift(filtered_sequence, new_current_primes)
  end
end

limit = 600851475143
Sieve.prime(limit)
|> Enum.sort()
|> Enum.each(&IO.puts/1)
