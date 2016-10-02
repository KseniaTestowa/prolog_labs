predicates

woman(symbol)
man(symbol)
parents(symbol,symbol)
child(symbol)
mom(symbol,symbol)
dad(symbol,symbol)
son(symbol)
daughter(symbol)
fatherinlow(symbol,symbol)
motherinlow(symbol,symbol)
predok(symbol,symbol)

clauses
predok(X,Y):-parents(X,Z),predok(Z,Y).
predok(X,Y):-parents(X,Y).
child(X):-parents(_,X).
son(X):-child(X),man(X).
daughter(X):-child(X),woman(X).
mom(X,Y):-woman(X),parents(X,Y).
dad(X,Y):-man(X),parents(X,Y).
fatherinlow(X,Y):-man(X),not(parents(X,Y)),parents(X,Z),parents(Z,N),parents(Y,N).
motherinlow(X,Y):-woman(X),not(parents(X,Y)),parents(X,Z),parents(Z,N),parents(Y,N).

woman(anna).
woman(raisa).
woman(julia).
woman(xenia).

man(ivan).
man(nikolay).
man(sergey).
man(sasha).

parents(ivan,julia).
parents(anna,julia).
parents(raisa,sergey).
parents(nikolay,sergey).
parents(julia,xenia).
parents(sergey,xenia).
parents(julia,sasha).
parents(sergey,sasha).