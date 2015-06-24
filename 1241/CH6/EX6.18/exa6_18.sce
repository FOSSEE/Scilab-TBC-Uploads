//Example 6-18//
//Minimise an expression//
clc
//clears the console//
clear
//clears all existing variables//
//Mapping the expression//
disp('Y=m(2,3,4,5,6,7,12,13,14,15,18,19,20,21,22,23,28,29,30,31)')
disp('               A''                            A          ')
disp('       D''E'' D''E DE DE''            D''E'' D''E DE DE''')
disp('B''C''   0     0    1  1                0     0   1  1   ')
disp('BC''     1     1    1  1                1     1   1  1   ')
disp('BC       1     1    1  1                1     1   1  1   ')
disp('BC''     0     0    0  0                0     0   0  0   ')
disp(' From the map, high outputs for 2,3,4,5,6,7,12,13,14,15,18,19,20,21,22,23,28,29,30,31')
//Therefore the kmap is displayed//
disp('Therefore the minimum expression is:')
disp('Y=C+B''D')
//result is displayed//
