//Example 3.23 Simplify expression using k-map
clc; //clears the console window
clear; //clears the variable browser
disp('F = m(0,3,4,5,6,7,8,10,11,14,15)')
disp('      A''B''  A''B  AB   AB''')
disp('C''D''  1      1         1')
disp('C''D          1    ')
disp('CD      1    1    1    1')
disp('CD''          1    1    1') //The kmap for F is displayed//
disp('The solution for F is')
disp('F = A''B + CD + AC + B''C''D''')

