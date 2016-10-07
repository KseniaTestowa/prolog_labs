predicates
summa(real,real)
clauses
summa(0,S):-S=(-1/(-sin(1)+1)).
summa(K,X):-L=K-1,summa(L,Y),X=Y+(K-1)/((K+1)+sin(((K-1)*(K-1)*(K-1)/(K+1))).
goal
write("K="),readreal(K),
summa(K,S),write("S=",S),nl.