is_palindrome([]).
is_palindrome([_]).
is_palindrome(List) :-
    append([First|Middle], [Last], List),
    First == Last,
    is_palindrome(Middle).

read_list(L):- write('Enter the list: '),read(L).
check_palindrome:-
    read_list(L),
    write('Is the given list palindrome: '),
    is_palindrome(L).
