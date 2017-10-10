//Example 9.2: Reduction of state table 
clc // Clears the console
disp("Given State Table")
disp("q |    x=0         x=1   |    z")
disp('--------------------------------')
disp("A |     B           D    |    1")
disp("B |     D           F    |    1")
disp("C |     D           A    |    0")
disp("D |     D           E    |    0")
disp("E |     B           C    |    1")
disp("F |     C           D    |    0")
disp('States A-E imply C-D and State C-D imply A-E')
disp('AE and CD are equivalent')
disp(" q  |     x=0          x=1    |    z")
disp('------------------------------------')
disp("A-E |      B           C-D    |    1")
disp(" B  |     C-D           F     |    1")
disp("C-D |     C-D          A-E    |    0")
disp(" F  |     C-D          C-D    |    0")
//displays the reduced state table.


