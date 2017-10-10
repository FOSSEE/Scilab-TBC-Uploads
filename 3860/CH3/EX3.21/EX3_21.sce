//Example 3.21: Reduce expression using k-map with dont cares.
clc; //clears the window
clear; //clears all existing variables
//Mapping the expression//
disp('       W''X'' W''X  WX  WX'' ')
disp('Y''Z''    X    1   1      ')
disp('YZ''     X        1   1 ')
disp('YZ      X    1       1')
disp('YZ''     X            ')// the k-map is displayed.
disp('g1 = x''z + w''yz + w''y''z'' + wxy''')
disp('g2 = x''z + w''yz + xy''z'' + wxy''')
disp('g3 = x''z + w''yz + xy''z'' + wy''z')
