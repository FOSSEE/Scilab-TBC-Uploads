//Example 3.40 Simplify expression using k-map
clc; //clears the console window
clear; //clears the variable browser
disp('F = m(2,3,4,6,9,11,12)+ d(0,1,14,15)')
disp('      C''D''  C''D  CD  CD''')
disp('A''B''   X     1    1    0')
disp('A''B    X     0    0    1')
disp('AB     1     0    X    1')
disp('AB''    1     1    X    0') //The kmap for F is displayed//
disp('G = m(2,3,4,6,9,11,12)+ d(0,1,14,15)')
disp('      C''D''  C''D  CD  CD''')
disp('A''B''   X     0    1    0')
disp('A''B    X     0    0    0')
disp('AB     0     0    X    1')
disp('AB''    1     1    X    1') //The kmap for G is displayed//
disp('The one solution for F and G:')
disp('F = B''D + ABD''+ A''D''')
disp('G = AC + ABD''+ CD''')
disp('The other solution for F and G: ')
disp('F = B''D + A''CD'' + BD''')
disp('G = AC + ABD'' + A''CD''')
