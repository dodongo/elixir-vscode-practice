defmodule MyAppCLITest do
  use ExUnit.Case
  doctest MyApp.CLI

  describe "MyApp.CLI.fizzbuzz(number)" do
    test """
    if the number is divisible by 3 and 5, returns "fizzbuzz"
    """ do
      assert MyApp.CLI.fizzbuzz(15) == "fizzbuzz"
      assert MyApp.CLI.fizzbuzz(30) == "fizzbuzz"
    end

    test """
    if the number is divisible by 3, returns "fizz"
    """ do
      assert MyApp.CLI.fizzbuzz(3) == "fizz"
      assert MyApp.CLI.fizzbuzz(6) == "fizz"
    end

    test """
    if the number is divisible by 5, returns "buzz"
    """ do
      assert MyApp.CLI.fizzbuzz(5) == "buzz"
      assert MyApp.CLI.fizzbuzz(10) == "buzz"
    end

    test """
    in all other cases it returns the number
    """ do
      assert MyApp.CLI.fizzbuzz(1) == "1"
    end
  end

  describe "MyApp.fizzbuzz_range(range)" do
    test """
    if the range is 0..10, returns ["1", "2", "fizz", "4", "buzz", "fizz", "7", "8", "fizz", "buzz"]
    """ do
      assert(
        MyApp.CLI.fizzbuzz_range(1..10) == [
          "1",
          "2",
          "fizz",
          "4",
          "buzz",
          "fizz",
          "7",
          "8",
          "fizz",
          "buzz"
        ]
      )
    end
  end
end
