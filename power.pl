pow(_,0,1).
pow(X,M,N):-M1 is M-1,pow(X,M1,Y),N is Y*X.

read_num(N):-write('Enter the number: '),read(N).
raise_to(M):-write('Enter the raising number: '),read(M).
power:-
    read_num(N),
    raise_to(M),
    pow(N,M,R),
    write('The desired output: '),
    write(R).
