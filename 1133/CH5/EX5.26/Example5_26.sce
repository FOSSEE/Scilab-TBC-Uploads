//Example 5.26
clc
disp("The truth table for 3-bit binary to gray code converter is as shown below")
disp("")
disp("A  B  C    G2  G1  G0")
disp("0  0  0    0   0   0")
disp("0  0  1    0   0   1")
disp("0  1  0    0   1   1")
disp("0  1  1    0   1   0")
disp("1  0  0    1   1   0")
disp("1  0  1    1   1   1")
disp("1  1  0    1   0   1")
disp("1  1  1    1   0   0")
disp("")
disp("The fig. 5.52 shows the implementation of 3-bit binary to gray code converter using 3:8 decoder. As outputs of 74138 are active low we have to use NAND gate instead of OR gate. The active low output from the decoder forces output(s) of connected NAND gate(s) to become HIGH, thus implementing the function.")