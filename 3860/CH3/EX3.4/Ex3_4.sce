//Example 3.4 Simplify expression using k-map
clc; //clears the console window
clear; //clears the variable browser
disp('The given K map for function G = ')
disp('      A''B''  A''B  AB  AB''')
disp('C''D''                    ')
disp('C''D               1     ')
disp('CD                1     ')
disp('CD''               1     ') //The kmap for G is displayed//
disp('The given K map for function H = ')
disp('      A''B''  A''B  AB  AB''')
disp('C''D''                    ')
disp('C''D          1    1     ')
disp('CD                1     ')
disp('CD''               1     ') //The kmap for H is displayed//
disp('The solution for  G is')
disp('G = ABC + ABD')
disp('The solution for H is')
disp('H = BC''D + ABC')
