//Example 9.10: Reduction of state table 
clc // Clears the console
disp("Given State Table")
disp("q |    x=0         x=1   |    z")
disp('--------------------------------')
disp("A |     C           D    |    0")
disp("B |     D           A    |    1")
disp("C |     E           D    |    0")
disp("D |     B           A    |    0")
disp("E |     C           D    |    0")
disp('States A-C-E and B-D are equivalent')
disp(" q  |     x=0      x=1   |    z")
disp('------------------------------------')
disp(" A |      A         B    |    0")
disp(" B  |     B         A    |    1")

//displays the reduced state table.


