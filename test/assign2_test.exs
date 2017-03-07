defmodule Assign2Test do
  use ExUnit.Case
  doctest Assign2

  test "multiply will work" do
    assert Assign2.multiply(3,4) == 12
  end
end
