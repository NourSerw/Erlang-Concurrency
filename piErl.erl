-module (piErl).
-export([pi/0]).
-export([fractiongen/1]).

pi() ->
	A = 4 * (1 - fractiongen(3) + fractiongen(5)),
	io:fwrite("~.5f " , [A]).

fractiongen(N) when N > 10001 -> 1/N;
fractiongen(N) -> 1/N + fractiongen(N+4).
