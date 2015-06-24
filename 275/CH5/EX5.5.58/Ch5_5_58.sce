clc
disp("Example 5.58")
printf("\n")
disp("calculate the value of C1 & C2 of Colpitts oscillator")
printf("Given\n")
//inductance
L=5*10^-3
//frequency of oscillation
f=50*10^3
//total effective capacitance
C=1/(4*(%pi)^2*f^2*L)
//feedback factor 
B=0.1
//then C2/C1=0.1, so substituting in C=C1C2/(C1+C2) we get
C1=1.1*C/0.1
C2=0.1*C1
printf("The value of C1=\t%e farad\nC2=\t%e farad\n",C1,C2)
