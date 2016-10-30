DOMAINS
int = integer*
PREDICATES
list(integer, integer, int)
first(integer,int)
last(integer,int)


CLAUSES
list(N,N,[]):-!.
list(N,I,[H|T]):-I < N, H = N - I, J = I + 1, list(N,J,T).
first(First,[First|_]).
last(Last,[Last]).
last(Last,[_|Tail]):-last(Last,Tail).

GOAL
write("Enter N: "),
readint(N),
list (N,0,L),write(L),nl,first(First,L),write("First element: "),write(First),nl,last(Last,L),write("Last element: "),write(Last).
