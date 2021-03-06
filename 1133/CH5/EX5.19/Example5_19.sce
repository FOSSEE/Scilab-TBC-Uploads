//Example 5.19
clc
disp("Let us see the truth table of full subtractor.")
disp("  A  B  Bin  D  Bout")
disp("  0  0   0   0   0")
disp("  0  0   1   1   1")
disp("  0  1   0   1   1")
disp("  0  1   1   0   1")
disp("  1  0   0   1   0")
disp("  1  0   1   0   0")
disp("  1  1   0   0   0")
disp("  1  1   1   1   1")
disp("")
disp("For full subtractor difference D function can be written as D = f(A, B, C) = summation m(1, 2, 4, 7) and Bout function can be written as")
disp("    Bout = F(A, B, C) = summation m(1, 2, 3, 7)")
disp("With Din input 1, demultiplexer gives minterms at the output so by logically ORing required minterms we can implement Boolean functions for full subtractor. Fig. 5.34 shows the implementation of full subtractor using demultiplexer.")
