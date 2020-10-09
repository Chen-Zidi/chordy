-module(key).
-export([generate/0,between/3]).

%generate an random number
%create a unique key
generate()->
    rand:uniform(1000000000).

%check if the key is between two nodes
between(Key, From, To)->
    if 
        %from is smaller than to
        From < To ->
            if     
                (Key > From) and (Key =< To) ->
                true;
                true->
                false
            end;
        % from is bigger than to
        From > To ->
            if
                (Key > From) and (Key >= To)->
                    true;
                true->
                    false
            end;
        %the whole ring
        From == To ->
            true;
        true ->
            false
    end.

