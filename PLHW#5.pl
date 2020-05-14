store(best_smoothies, [alan,john,mary],
[ smoothie(berry, [orange, blueberry, strawberry], 2),
smoothie(tropical, [orange, banana, mango, guava], 3),
smoothie(blue, [banana, blueberry], 3) ]).


store(all_smoothies, [keith,mary],
[ smoothie(pinacolada, [orange, pineapple, coconut], 2),
smoothie(green, [orange, banana, kiwi], 5),
 smoothie(purple, [orange, blueberry, strawberry], 2),
 smoothie(smooth, [orange, banana, mango],1) ]).


store(smoothies_galore, [heath,john,michelle],
[ smoothie(combo1, [strawberry, orange, banana], 2),
smoothie(combo2, [banana, orange], 5),
smoothie(combo3, [orange, peach, banana], 2),
smoothie(combo4, [guava, mango, papaya, orange],1),
smoothie(combo5, [grapefruit, banana, pear],1) ]).


more_than_four(X) :- store(X,_,L), not(length(L,0)),not(length(L,1)),not(length(L,2)),not(length(L,3)),not(length(L,4)).

exists(X) :- store(_,_,L), member(smoothie(X,_,_),L).

ratio(X,R) :- store(X,E,S), length(E,NE), length(S,NS), R = NE:NS .

average(X,A) :- store(X,_,S), suming(S, SSUM), length(S,NS), NS>0, A is SSUM/NS.

suming([H|T], A) :- H = smoothie(_,_,P), suming(T,B), A is P+B.
suming([], A) :- A is 0.
