//Example 3.25: Reduce expression using k-map in both POS and SOP form
clc; //clears the window
clear; //clears all existing variables
//Mapping the expression//
disp('f(a,b,c,d) = summation of minterms(0,1,4,5,10,11,14)')
disp('The function f''(a,b,c,d) = summation of minterms(2,3,6,7,8,9,12,13,15)')
disp('       a''b'' a''b  ab   ab'' ')
disp('c''d''    1    1    ')
disp('cd''     1    1 ')
disp('cd                     1')
disp('cd''             1      1')
disp('The one minimum solution for f and the two equally good solution ofr sum of products for f'' are')
disp(' f = a''c'' + ab''c + acd''')
disp('f'' = ac'' + a''c + abd')
disp(' f'' = ac'' + a''c + bcd')
