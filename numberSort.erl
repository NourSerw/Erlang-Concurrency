-module(numberSort).
-export([main/1]).
-export([countList/1]).
-export([loadList/1]).


main([H|T]) ->
A = countList([H|T]),
{length(A),A}.

countList([]) -> [];
countList([H|T]) ->
countList([X||X <- T, X /=H])++[H].

loadList(TextFile) ->
{ok, File} = file:read_file(TextFile),
List = unicode:characters_to_list(File),
TList = string:tokens(string:to_lower(List), " .,;:!?/>'<{}£$%^&()-=+_[]*#\\\n\r\"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"),
main(TList).











