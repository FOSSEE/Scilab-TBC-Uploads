clc
disp("Example 5.57")
printf("\n")
disp("calculate the value of L of Colpitts oscillator ")
printf("Given\n")
//capacitor
C1=100*10^-12
C2=60*10^-12
//total effective capacitance
C=C1*C2/(C1+C2)
//frequency of oscillation
f=40*10^3
//inductance
L=1/(4*(%pi)^2*f^2*C)
printf("inductance value is \n%f henry\n",L)
