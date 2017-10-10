//Example 3.22: Reduce expression using k-map 
clc; //clears the window
clear; //clears all existing variables
//Mapping the expression//
disp('f(a,b,c,d) = summation of minterms(0,1,4,5,10,11,14)')
disp('The function f''(a,b,c,d) = summation of minterms(2,3,6,7,8,9,12,13,15)')
disp('       a''b'' a''b  ab   ab'' ')
disp('c''d''    1    1    ')
disp('cd''     1    1 ')
disp('cd                    1')
disp('cd''              1    1')
disp('The three solutions are given below')
disp(' g1 = c''d'' + ab + b''d'' + a''cd')
disp(' g2 = c''d'' + ab + b''d'' + a''b''c')
disp(' g3 = c''d'' + ab + a''d'' + a''b''c')
