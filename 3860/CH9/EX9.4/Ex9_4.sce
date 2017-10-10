//Example 9.4: Reduction of state table 
clc // Clears the console
disp("Given State Table")
disp("q |    x=0         x=1   |   x=0      x=1")
disp('-----------------------------------------')
disp("A |     F           B    |    0        0")
disp("B |     E           G    |    0        0")
disp("C |     C           G    |    0        0")
disp("D |     A           C    |    1        1")
disp("E |     E           D    |    0        0")
disp("F |     A           B    |    0        0")
disp("G |     F           C    |    1        1")
disp('State A-F, B-C-E, and D-G are equivalent. So, reduced state table is as given below.')
disp("q   |    x=0       x=1    |   x=0      x=1")
disp('----------------------------------------------')
disp(" A  |     A         B     |    0        0")
disp(" B  |     B         D     |    0        0")
disp(" D  |     A         B     |    1        1")
//displays the reduced state table.


