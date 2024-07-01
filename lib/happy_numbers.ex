defmodule HappyNumbers do
  @moduledoc """
  https://ccd-school.de/en/coding-dojo/function-katas/happy-numbers/
  """

  def happy_number?(1), do: true

  def happy_number?(number)
      when is_integer(number) and number < 10,
      do: false

  def happy_number?(number) when is_integer(number) do
    number
    |> Integer.digits()
    |> happy_number?(0)
  end

  def happy_number?([], sum)
      when is_integer(sum),
      do: happy_number?(sum)

  def happy_number?([first | rest], sum) do
    happy_number?(rest, sum + first)
  end
end
