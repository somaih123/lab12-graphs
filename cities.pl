% Task 1: travel routes between cities (directed graph).

%Facts
edge('Makkah','Madinah').
edge('Makkah','Riyadh').
edge('Madinah','Makkah').
edge('Madinah','Taif').
edge('Madinah','Tabuk').
edge('Tabuk','Taif').
edge('Taif','Tabuk').
edge('Taif','Dammam').
edge('Qatif','Madinah').
edge('Qatif','Dammam').
edge('Dammam','Qatif').
edge('Dammam','Riyadh').
edge('Riyadh','Dammam').

%Rules
%travel(Start,Finish,Path_List)
travel(From,To,Path) :-
    path(From,To,[From],P),
    reverse(P,Path).

%path(From,To,Visited_List,Path_List)
path(X,X,P,P).
path(X,Y,V,P) :-
    edge(X,Z),
    not(member(Z,V)),
    path(Z,Y,[Z|V],P).
