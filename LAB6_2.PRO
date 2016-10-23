%trace
domains
 int = integer*
 
predicates
 list(integer, integer, int)
 reverse(int, int, int)
 bubble(int, int)
 swap(int, int)
 
clauses
 list(N, N, []):-!.
 list(N, I, [H|T]):-
  I < N,
  H = 10 + 2 * I + 1,
  J = I + 1,
  list(N, J, T).
 
 reverse([], Z, Z).
 reverse([H|T], Z, A):-
  reverse(T, Z, [H|A]).

 bubble(X, Y):-
  swap(X, K),
  !,
  bubble(K, Y).
  
 bubble(Y, Y).
 
 swap([X,Y|T], [Y,X|T]):-
  X>Y.
  
 swap([X|H], [X|T]):-
  swap(H, T).

goal
 write("Enter N="),
 readint(N),
 list(N, 0, L),
 write(L),
 nl,
 nl,
 reverse(L, R, []),
 nl,
 nl,
 write("Ordered list:"),
 nl,
 bubble(R, X),
 write(X),
 nl.