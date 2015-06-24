//Example 5.15
clc
disp("In the given Boolean function three don''t care conditions are also specified. We know that don..t care conditions can be treated as either 0s or 1s. Fig. 5.29 shows the implementation of given Boolean function using 8 : 1 multiplexer.")
disp("")
disp("Implementation table :")
disp("      D0  D1  D2  D3  D4  D5  D6  D7")
disp("A''    0   1   2   3   4   5   6   7")
disp("A     8   9   10  11  12  13  14  15")
disp("      1   0   1   1   A   A   1   0")
disp("")
disp("In this example,  by taking don''t care conditions 8 and 14 we have eliminated A'' term and hence the inverter.")
