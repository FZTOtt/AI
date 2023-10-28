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


ucat(L1, L2, L3) :-
    append(L1, L2, CombinedList), 
    uniq(CombinedList, L3). 
