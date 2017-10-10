//Example 3.20 Simplify expression using k-map
clc; //clears the console window
clear; //clears the variable browser
disp('F = m(1,7,10,11,13)+ d(5,8,15)')
disp('      A''B''  A''B  AB   AB''')
disp('C''D''                  X')
disp('C''D    1     X    1')
disp('CD           1    X    1')
disp('CD''                    1') //The kmap for F is displayed//
disp('The solution for F is')
disp('F = AC + ABD''+ CD''')

