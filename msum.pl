sum_list([], 0).
sum_list([Head|Tail], Sum) :-
    sum_list(Tail, RestSum),
    Sum is Head + RestSum.

% Предикат msum для вычисления сумм вложенных списков
msum([], []).
msum([InnerList|RestLists], [Sum|RestSums]) :-
    sum_list(InnerList, Sum), % Вычисляем сумму текущего вложенного списка
    msum(RestLists, RestSums). % Рекурсивно обрабатываем остальные вложенные списки
