defmodule HappyNumbersTest do
  use ExUnit.Case
  doctest HappyNumbers

  test "happy_number" do
    assert HappyNumbers.happy_number?(1)
    assert HappyNumbers.happy_number?(10)
    assert HappyNumbers.happy_number?(19)

    refute HappyNumbers.happy_number?(0)
    refute HappyNumbers.happy_number?(11)
    refute HappyNumbers.happy_number?(20)
  end
end