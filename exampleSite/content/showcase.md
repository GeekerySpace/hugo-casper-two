---
title: Showcase
draft: true
image: img/writing.jpg
markup: mmark
highlightJS: off
menu:
  main:
    name: Showcase
---

## Code

```
No or unknown programming language here.
```

```ruby
def f(x)
  x > 0 ? Math.sqrt(x) : 0
end
```

```python
import math

def f(x):
  return math.sqrt(x) if x > 0 else 0
```

```coffee
f = (x) -> if x > 0 then Math.sqrt(x) else 0
```

```dart
import "dart:math" as math;

double f(double x) {
  return x > 0 ? math.sqrt(x) : 0;
}
```

```nim
import strutils

proc greet(who: string) =
  let s = "Nim says: Hello $1!" % [who]
  echo s

greet "World"
```

```d
import std.stdio;

void main()
{
    // Let's get going!
    writeln("D says: Hello World!");
}
```

```erlang
-module(hello).
-compile(export_all).

world() -> to('World').
to(Who) -> io:format("Erlang says: hello, ~s~n", [Who]).

start() ->
  hello:world(),
  hello:to('Batman').
```

```hs
module Main where

import Control.Monad.Eff.Console

main = log "Hello, World!"
```

```ocaml
type greetee = Mortal of string | ChuckNorris;;
(* let greet who = match who with *)
let greet = function
  | Mortal name -> print_string ("Hello, " ^ name ^ "!\n")
  | ChuckNorris -> print_string ("Please! Don't kick my ass, Chuck!\n")
  ;;
greet (Mortal "Joe");;
greet ChuckNorris;;
```

```
More syntaxes???
```

## Tasks:

- [ ] Taks 1
- [ ] Taks 2
  - [ ] Taks 2.1
  - [ ] Taks 2.2
- [ ] Taks 3
- [ ] Taks 4

## MMark

This is MMark talking: H~2~O is a liquid. 2^10^ is 1024. Yeah.

> Some aside here.
