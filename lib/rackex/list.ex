defmodule Rackex.List do
  # TODO doc for this module

  def for_sum(it, fun) when is_list(it) do
    it
    |> Enum.map(&fun.(&1))
    |> Enum.sum()
  end

  def for_fold(acc, it, fun) do
    apply(Enum, :reduce, [it, acc, &fun.(&1, &2)])
  end

  defmacro reduce(enum, acc, fun) do
    quote do
      apply(Enum, :reduce, [unquote(enum), unquote(acc), unquote(fun)])
    end
  end

  defmacro filter(enum, fun) do
    quote do
      apply(Enum, :filter, [unquote(enum), unquote(fun)])
    end
  end

  defmacro map(enum, fun) do
    quote do
      apply(Enum, :map, [unquote(enum), unquote(fun)])
    end
  end
end
