predicates
student(symbol,integer)
hobby(symbol,symbol)
info(symbol,integer,symbol)
all()
findsame()
findcouple()

clauses

student(petrov,7).
student(ivanov,8).
student(sidorov,10).
hobby(ivanov,games).
hobby(petrov,games).
hobby(sidorov,books).

info(X,Y,Z):-student(X,Y),hobby(X,Z).
all():-write("About students: "),nl, hobby(X,Y), write(X," has hobby ",Y),nl,fail.
findsame():-hobby(X,Y),hobby(A,Y),X<>A,write(X," ",A),nl,fail.
findcouple():-write("Enter class: "), readint(Y), info(X,Y,Z), Z="games", write(X," ",Y," ",Z),nl,info(A,B,C),C=Z,X<>A,write(A," ",B," ",C),nl,fail.