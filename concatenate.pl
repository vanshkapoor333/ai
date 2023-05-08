conc([],L,L).
conc([H|T],L2,[H|L]):-conc(T,L2,L).

read_list(L) :- write('Enter a list: '), read(L).

concatenate_lists :-
   read_list(L1),
   read_list(L2),
   conc(L1, L2, L3),
   write('Concatenated list: '),
   write(L3).
