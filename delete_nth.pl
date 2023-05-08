delete_nth(1, [_|T], T).
delete_nth(N, [H|T], [H|R]):-
    N > 1,
    N1 is N - 1,
    delete_nth(N1, T, R).

read_list(L):-write('Enter the list: '),read(L).
pos(N):-write('Enter the position of element to be deleted: '),read(N).
delete_n:-
    read_list(L),
    pos(N),
    delete_nth(N,L,R),
    write('The Result after deletion: '),
    write(R).
