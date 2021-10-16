defmodule Rackex.Core do
  # TODO doc for this module

  defmacro define(name, expr) do
    quote do
      def(unquote(name), unquote(expr))
    end
  end

  defmacro module(name, expr) do
    quote do
      defmodule(unquote(name), unquote(expr))
    end
  end

  defmacro lambda(do: expr) do
    quote do
      fn ->
        unquote(expr)
      end
    end
  end

  defmacro lambda({param1, param2}, do: expr) do
    quote do
      fn unquote(param1), unquote(param2) ->
        unquote(expr)
      end
    end
  end

  defmacro lambda(param, do: expr) do
    quote do
      fn unquote(param) ->
        unquote(expr)
      end
    end
  end
end
