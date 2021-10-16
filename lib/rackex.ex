defmodule Rackex do
  defmacro __using__(_) do
    quote do
      import Rackex.Core
    end
  end
end
