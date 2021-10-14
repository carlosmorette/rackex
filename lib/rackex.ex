defmodule Rackex do
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
  
  def for_sum(it, fun) when is_list(it) do
    it
    |> Enum.map(&fun.(&1))
    |> Enum.sum()
  end

  def for_fold(acc, it, fun) do
    Enum.reduce(it, acc, &fun.(&1, &2))
  end

  defmacro lambda([do: expr]) do
    quote do
      (fn -> 
        unquote(expr) 
      end)
    end
  end

  defmacro lambda(param1, param2, [do: expr]) do
    quote do
      (fn (unquote(param1), unquote(param2)) -> 
        unquote(expr) 
      end)
    end
  end

  defmacro lambda(param, [do: expr]) do
    quote do
      (fn unquote(param) -> 
        unquote(expr) 
      end)
    end
  end
end

