-module(fact).
-export([factorial/1]).

factorial(0)->1;
factorial(N) when N >0 and is_integer(N)
-> N * factorial(N-1).

