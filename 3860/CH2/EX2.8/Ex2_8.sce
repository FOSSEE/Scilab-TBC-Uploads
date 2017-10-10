//Example 2.8: Representation of truth table from minterm expression
clc // Clears the console
disp("f(a,b,c) = Summation minterms (1,2,5) + Summation dont cares (0,3)")
disp('implies that minterms 1,2 and 5 are included in the function and that 0 and 3 are dont cares, that is the truth table is as follows:')
disp("a  b  c  |    f")
disp("0  0  0  |    x")
disp("0  0  1  |    1")
disp("0  1  0  |    1")
disp("0  1  1  |    x")
disp("1  0  0  |    0")
disp("1  0  1  |    1")
disp("1  1  0  |    0")
disp("1  1  1  |    0")
