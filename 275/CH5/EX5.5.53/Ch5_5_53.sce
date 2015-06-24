clc
disp("Example 5.53")
printf("\n")
disp("Design the value of L1,L2 & C for a hartley oscillator")
printf("Given\n")
//frequency of oscillation
f=30*10^3
//then value of LC
LC=1/(4*(%pi)^2*f^2)
//select c as
C=0.1*10^-6
//Total inductance
L=LC/C
//let L1=L2
L1=L/2
L2=L1
printf("The values of L1=\t%f henry\nL2=\t%f henry\nC=\t%e farad\n",L1,L2,C)
