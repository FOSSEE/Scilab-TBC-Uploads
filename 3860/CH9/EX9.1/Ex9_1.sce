//Example 9.1: Reduction of state table 
clc // Clears the console
disp("Given State Table")
disp("q |    x=0         x=1   |   x=0      x=1")
disp('-----------------------------------------')
disp("A |     C           B    |    0        0")
disp("B |     D           D    |    0        0")
disp("C |     A           D    |    0        1")
disp("D |     A           C    |    0        1")
disp('State C and D are equivalent. So, reduced state table is as given below.')
disp("q   |     x=0          x=1    |   x=0      x=1")
disp('----------------------------------------------')
disp(" A  |     C-D           B     |    0        0")
disp(" B  |     C-D          C-D    |    0        0")
disp("C-D |      A           C-D    |    0        1")
//displays the reduced state table.


