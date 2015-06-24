clc
disp("Example 5.51")
printf("\n")
disp("calculate the value of L1 & L2 of Hartley oscillator")
printf("Given\n")
//frequency of oscillation
f=25*10^3
C=0.02*10^-6
//feedback factor
B=0.2
//Total inductance
L=1/(4*(%pi)^2*f^2*C)
L1byL2=B
L1plusL2=L
//therefore
L2=L/1.2
L1=L-L2
printf("The values of L1=\t%f henry\nL2=\t%f henry\n",L1,L2)
