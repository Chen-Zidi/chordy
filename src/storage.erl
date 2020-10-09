%a store
-module(storage).
-export([create/0,add/3,lookup/2,split/3,merge/2]).

%create a new store
create()->
    [].

%add a key-value pair
add(Key,Value,Store)->
    [{Key,Value}|lists:keydelete(Key, 1, Store)].

%look for the tuple
lookup(Key,Store)->
    lists:keyfind(Key,1,Store).

%split the store list
split(From,To,Store)->
    lists:partition(fun({Key,_})->key:between(Key,From,To) end,Store).

%merge two lists
merge(Entries,Store)->
    lists:keymerge(1,Entries,Store).