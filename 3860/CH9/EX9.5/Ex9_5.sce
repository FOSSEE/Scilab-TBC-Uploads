//Example 9.5: Reduction of state table 
clc // Clears the console
disp("Given State Table")
disp("q |    x=0         x=1   |   x=0      x=1")
disp('-----------------------------------------')
disp("A |     B           D    |    0        0")
disp("B |     E           D    |    1        0")
disp("C |     B           C    |    0        0")
disp("D |     F           A    |    0        0")
disp("E |     A           B    |    1        1")
disp("F |     E           C    |    1        0")
disp('The set of equivalent states are A(A-C-D), B(B-F) and E')
disp('The reduced state table is given below')
disp("q |    x=0         x=1   |   x=0      x=1")
disp('-----------------------------------------')
disp("A |     B           A    |    0        0")
disp("B |     E           A    |    1        0")
disp("E |     A           B    |    1        1")
//displays the reduced state table.
