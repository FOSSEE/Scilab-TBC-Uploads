clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.11
// Page 68
printf("Example 3.11, Page 68 \n \n");

// solution

// basis : 1000 kg/h of feed
// balancing H2SO4, HNO3 and H2O in all the three product streams
M = [1 0 0 1 0 0 1 0 0;0 1 0 0 1 0 0 1 0;0 0 1 0 0 1 0 0 1;1 0 0 0 0 0 0 0 0;0 1 0 0 0 0 0 0 0;0 0 1 0 0 0 0 0 0;0 0 0 1 0 0 0 0 0;0 0 0 0 1 0 0 0 0;0 0 0 0 0 1 0 0 0]
v = [400;100;500;4;94;60;16;6;400]
s = M\v
A = s(1)+s(2)+s(3)
B = s(4)+s(5)+s(6)
C = s(7)+s(8)+s(9)
printf("Flowrates are :\n A = "+string(A)+" kg/h \n B = "+string(B)+" kg/h\n C = "+string(C)+" kg/h")
