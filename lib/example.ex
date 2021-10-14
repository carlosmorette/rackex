import Rackex

(module Rackex.Example do
  define say_hello() do
    "Hello, World!"
  end

  define sum_numbers(it) when is_list(it) do
    for_sum(it, lambda n do
      n * 3
    end)
  end

  define fold(it) do
    for_fold(0, it, lambda i, acc do
      (acc + (i * 10))
    end)
  end

  define lambda_map_example do
    [1, 2, 3]
    |> Enum.map(lambda x do
      x + 1
    end)
  end

  define lambda_reduce_example do
    [1, 2, 3]
    |> Enum.reduce(0, lambda n, acc do
      acc + n
    end)
  end
end)

