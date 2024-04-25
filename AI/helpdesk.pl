:- dynamic available/1.

staff(john, technical).
staff(emma, technical).
staff(mark, billing).
staff(susan, general).

available(john).
available(emma).
available(mark).
available(susan).

issue_category(technical, ['software', 'hardware', 'networking']).
issue_category(billing, ['payment', 'invoice']).
issue_category(general, ['other']).

assign_issue(Issue, Staff) :-
    staff(Staff, Category),
    issue_category(Category, Issues),
    member(Issue, Issues),
    available(Staff),
    retract(available(Staff)),
    assertz(busy(Staff)).

release_staff(Staff) :-
    busy(Staff),
    retract(busy(Staff)),
    assertz(available(Staff)).
