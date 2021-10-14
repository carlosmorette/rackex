defmodule RackexTest do
  use ExUnit.Case
  doctest Rackex

  test "greets the world" do
    assert Rackex.hello() == :world
  end
end
