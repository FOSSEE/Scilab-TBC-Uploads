//Example 9.11: Reduction of state table 
clc // Clears the console
disp("Given State Table")
disp("q |    x=0         x=1   |    z")
disp('--------------------------------')
disp("A |     B           E    |    0")
disp("B |     D           A    |    1")
disp("C |     G           A    |    0")
disp("D |     F           G    |    1")
disp("E |     B           C    |    0")
disp("F |     D           G    |    1")
disp("G |     D           E    |    1")
disp('The SP partition is also ouput consistent. The smallest equivalent system is given below')
disp(" q  |     x=0      x=1   |    z")
disp('------------------------------------')
disp(" A |      B         A    |    0")
disp(" B  |     D         A    |    1")
disp(" D  |     D         B    |    1")

//displays the reduced state table.


