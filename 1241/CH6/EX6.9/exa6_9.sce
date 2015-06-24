//Example 6-8//
//Mapping an equation//
clc
//clears the console//
clear
//clears all existing variables//
//Mapping the expression//
disp('Z=m(0,1,3,5,7,10,11,21,22,23,24,26,30,32,34,35,40,41,46,47,50,51,52,60,61)')
disp('                   B''                            B          ')
disp('           E''F'' E''F EF EF''            E''F'' E''F EF EF''')
disp('    C''D''   1     1    1  0                0     0   0  0   ')
disp('A'' CD''     0     1    1  0                0     1   1  1   ')
disp('    CD       0     0    0  0                0     0   0  1   ')
disp('    CD''     0     0    1  1                1     0   0  1   ')
disp('                                                             ')
disp('    C''D''   1     0    1  1                0     0   1  1   ')
disp('A   CD''     0     0    0  0                1     0   0  0   ')
disp('    CD       0     0    1  1                1     1   0  0   ')
disp('    CD''     1     1    0  0                0     0   0  0   ')
disp(' From the map, high outputs for 0,1,3,5,7,10,11,21,22,23,24,26,30,32,34,35,40,41,46,47,50,51,52,60,61 ')
//Therefore the kmap is displayed//
