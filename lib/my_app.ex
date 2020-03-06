defmodule MyApp.CLI do
  @moduledoc """
  Documentation for `MyApp`.
  """
  @spec main(Any.t()) :: [Atom.t()]
  def main(_) do
    IO.puts("Hello world: #{fizzbuzz(34)}")
  end

  @spec fizzbuzz_range(Range.t()) :: [String.t()]
  def fizzbuzz_range(range) do
    Enum.map(range, fn element -> fizzbuzz(element) end)
  end

  @spec fizzbuzz(number()) :: String.t()
  def fizzbuzz(number) do
    cond do
      rem(number, 15) == 0 -> "fizzbuzz"
      rem(number, 3) == 0 -> "fizz"
      rem(number, 5) == 0 -> "buzz"
      true -> "#{number}"
    end
  end
end
