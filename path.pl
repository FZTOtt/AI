connection(room1, room2).
connection(room2, room3).
connection(room2, room4).
connection(room3, room5).
connection(room4, room6).
connection(room5, room6).
connection(room6, room7).

connected(X, Y) :- connection(X, Y).
connected(X, Y) :- connection(Y, X).

% Предикат path для поиска пути в лабиринте
path(X, Y, Path) :- dfs(X, Y, [], Path).

% Предикат dfs реализует поиск в глубину
dfs(X, X, Visited, [X|Visited]).
dfs(X, Y, Visited, Path) :-
    connected(X, Z),
    Z \== X,
    \+ member(Z, Visited),
    dfs(Z, Y, [X|Visited], Path).
