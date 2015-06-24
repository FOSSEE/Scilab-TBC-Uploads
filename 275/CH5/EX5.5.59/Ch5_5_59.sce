clc
disp("Example 5.59")
printf("\n")
disp("calculate the value of L & C for a colpitts oscillator")
printf("Given\n")
//frequency of oscillation
f=40*10^3
LC=1/(4*(%pi)^2*f^2)
//select L
L=10*10^-3
//find C
C=1/(4*(%pi)^2*f^2*L)
//let C1=C2 so we get
C1=2*C
C2=C1
printf("The values of L=\t%f henry\nC1=\t%e farad\nC2=\t%e farad\n",L,C1,C2)
