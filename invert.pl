invert([], []).
invert([Head|Tail], Inverted) :-
    invert(Tail, InvertedTail),
    append(InvertedTail, [Head], Inverted).
