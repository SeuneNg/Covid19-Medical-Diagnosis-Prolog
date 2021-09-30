virus(sRASCov2).
virus(covid19).
caused(covid19,sRASCov2).
person(_).
present(covid19,sRASCov2).
present(sRASCov2,bat).
present(sRASCov2,pangolin).

chanceHave(X,covid19):- eat(X,bat).
chanceHave(X,covid19):- eat(X,pangolin).
eat(X,Y):-person(X),animal(Y).


has(X,fever):- person(X), hasSup(X,37).
covid(X):- person(X), has(X,fever),dryCough(X).
covid(X):- person(X), has(X,fever), lossTaste(X), lossSmell(X).
covid(X):- person(X), has(X,fever),dryCough(X), musclePain(X).
covid(X):- person(X), pain(X),diarrhea(X),runnyNose(X),soreThroat(X).


health(_).


flu(X):- dryCough(X),has(X,fever).
has(X,dVPneunomania):- covid(X).
has(X,bacterialPneunomania):- covid(X).
isPresent(virus,X):- covid(X).
produce(system,X,anticorps):- isPresent(virus,X).
contact(X,Y,E):- at(X,E), at(Y,E), covid(Y), touch(Y,X).
contact(X,Y,E):- at(X,E), at(Y,E), covid(Y), dryCough(Y),unventilatedPlace(E).


abducible(hasSup(_,37)).
abducible(dryCough(_)).
abducible(lossSmell(_)).
abducible(lossTaste(_)).
abducible(musclePain(_)).
abducible(pain(_)).
abducible(diarrhea(_)).
abducible(runnyNose(_)).
abducible(soreThroat(_)).
abducible(at(_,_)).
abducible(touch(_,_)).
abducible(unventilatedPlace(_)).
abducible(person(_)).
abducible(eat(_,bat)).
abducible(eat(_,pangolin)).


/*ic:-covid(X),flu(X).
ic:-covid(X),health(X).
ic:-health(X),has(X,fever).
ic:-chanceHave(X,covid19),health(X).*/

person(bob).
has(bob,fever).
person(paul).
person(jeanne).
flu(jeanne).
has(jeanne,fever).
health(paul).
