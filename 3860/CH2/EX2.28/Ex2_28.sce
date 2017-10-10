//Example 2.28: Manipulation POS expression into SOP Expression.
clc // Clears the console
disp('f = (A + B + C) ( A'' + B'') = AB'' + A''( B + C) = AB'' + A''B + A''C')
disp('f = AA'' + AB'' + BA'' + BB'' + CA'' + CB''')// converting into disjunctive normal form.
disp('f = AB'' + A''B + A''C + B''C')
disp(' The SOP form of given expression is displayed')
disp(' The term B''C can then be removed because it is the consensus of AB'' and A''C')
//the reduced expression is displayed.
