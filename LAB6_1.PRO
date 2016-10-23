DOMAINS
int = integer*
PREDICATES
list(integer, integer, int)
bubble(int, int)

CLAUSES
list(N,N,[]):-!.
list(N,I,[H|T]):-I < N, H = N - I - 1, J = I + 1, list(N,J,T).

 

GOAL
write("Enter N: "),
readint(N),
list (N,0,L ),write(L),nl.
