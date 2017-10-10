//Example 2.6: Use of  Demorgans Theorem.to find complement of a given function.
clc; //clears the console
clear; //clears all existing variables
disp('The given expression is as follows')
disp('f = ab''(c + d''e) + a''bc'')')
disp('Finding complement using Demorgan''s Theorem')
disp('f'' = [ab''(c + d''e) + a''bc'']''')
disp('f'' = [ab''(c + d''e)]'' [a''bc'']''')
disp('f'' = [a'' + b + (c +  d''e)''][a + b'' + c]')
disp('f'' = [a'' + b + c''(d''e)''][a + b'' + c]')
disp('f'' = [a'' + b + c''(d + e'')][a + b'' + c]')
