//Example 16.1.
clc
format(6)
disp("Given      tr = 35 ns")
bw=0.35/(35*10^-9) // in Hz
x1=bw*10^-6  //in MHz
disp("We know that,  tr = 0.35 / BW")
disp(x1,"Therefore,    BW(MHz) = 0.35 / tr =")