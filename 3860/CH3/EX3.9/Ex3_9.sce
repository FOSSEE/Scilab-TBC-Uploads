//Example 3.9 Reduction using K-Map
clc; //clears the console window
clear; //clears the variable browser
disp('The given function is x''yz'' + x''yx + xy''z'' + xy''z + xyz')
disp('The mapping is shown below')
disp('      X''Y''  X''Y  XY  XY''')
disp('Z''          1         1')
disp('Z           1    1     ') //The kmap for given function is displayed//
disp('After finding the two essential prime implicants m7 is still uncovered. The following are the two solutions.')
disp('f = x''y + xy'' + xz')
disp('f = x''y + xy'' + yz')
