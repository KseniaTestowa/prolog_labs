domains
s1=string
s2=string
s3=string


predicates
name(s1)
instrument(s2)
language(s3)
relation(s1,s2,s3)
result(s1,s2,s3,s1,s2,s3,s1,s2,s3,s1,s2,s3)

clauses
name(masha).
name(zhenya).
name(lida).
name(katya).
instrument(cello).%виолончель
instrument(piano).
instrument(guitar).
instrument(violin).
language(english).
language(french).
language(deutch).
language(spanish).

relation(X,Y,Z):-name(X),instrument(Y),Y=guitar,language(Z),Z=spanish.
relation(X,Y,Z):-name(X),X=lida,instrument(Y),not(Y=violin),not(Y=cello),language(Z),not(Z=english).
relation(X,Y,Z):-name(X),X=masha,instrument(Y),not(Y=violin),not(Y=cello),language(Z),not(Z=english).
relation(X,Y,Z):-name(X),instrument(Y),not(Y=cello),language(Z),Z=deutch.
relation(X,Y,Z):-name(X),X=zhenya,instrument(Y),not(Y=violin),language(Z).

goal
result(X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3,X4,Y4,Z4),write(X1,"-",Y1,"-",Z1),nl,write(X2,"-",Y2,"-",Z2),nl,write(X3,"-",Y3,"-",Z3),nl,write(X4,"-",Y4,"-",Z4),nl.