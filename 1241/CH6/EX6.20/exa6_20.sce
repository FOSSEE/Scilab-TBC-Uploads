//Example 6-20//
//Find minimum of expression//
clc
//clears the console//
clear
//clears all existing variables//
//Mapping the expression//
disp('Y=M(0,1,9,10,11,13,14,15,16,17,22,23,26,27)')
disp('               A''                            A          ')
disp('       D''E'' D''E DE DE''            D''E'' D''E DE DE''')
disp('B''C''   0     0    1  1                0     0   1  1   ')
disp('BC''     1     1    1  1                1     1   0  0   ')
disp('BC       1     0    0  0                1     1   1  1   ')
disp('BC''     1     0    0  0                1     1   0  0   ')
disp(' From the map, high outputs for 0,1,9,10,11,13,14,15,16,17,22,23,26,27 ')
//Therefore the kmap is displayed//
disp('The SOP of expression is:')
disp('Y=B''C''D+A''B''C+ABC+BD''E''+ACD''+ABD''')
disp('24 inputs')
disp('The POS of expression is:')
disp('Y=(B+C+D)(B''+C+D'')(A''+B+C+D)(A+B''+E'')(A+B''+D'')')
disp('21 inputs')
disp('Therefore POS form is the minimum expression')
//result is displayed//
