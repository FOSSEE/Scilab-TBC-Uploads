//Example 9.6: Reduction of state table 
clc // Clears the console
disp("Given State Table")
disp("q |    x=00   x=01   x=10   x=11   |    z")
disp('--|--------------------------------|-----')
disp("A |     B      A      F       D    |    1")
disp("B |     E      A      D       C    |    1")
disp("C |     A      F      D       C    |    0")
disp("D |     A      A      B       C    |    1")
disp("E |     B      A      C       B    |    1")
disp("F |     A      F      B       C    |    0")
disp('States A-E , B-D and C-F are equivalent')

disp("q |    x=00   x=01   x=10   x=11   |    z")
disp('--|--------------------------------|-----')
disp("A |     B      A      C       B    |    1")
disp("B |     A      A      B       C    |    1")
disp("C |     A      C      B       C    |    0")
//displays the reduced state table.


 