# Rackex

LISP-like syntax using Elixir

## Installation

```elixir
def deps do
  [
    {:rackex, "~> 0.1.0"}
  ]
end
```

## Usage
You can use Rackex module and experience its power rs.
```elixir
use Rackex

(module Start, do: (
  (define (say_hello), do: (
    "Hello World!"))))
```

Let's define a lambda functions that sums.
```elixir
use Rackex

(lambda {a, b}, do: (
    a + b)).(2, 4))
```

Updates coming soon...
