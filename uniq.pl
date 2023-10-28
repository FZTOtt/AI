uniq(List, UniqueList) :-
    uniq(List, [], Temp),
    reverse(Temp, UniqueList).

uniq([], Acc, Acc). 
uniq([Head|Tail], Acc, UniqueList) :-
    member(Head, Acc),
    !,
    uniq(Tail, Acc, UniqueList).
uniq([Head|Tail], Acc, UniqueList) :-
    uniq(Tail, [Head|Acc], UniqueList). 
