clc
disp("Example 5.56")
printf("\n")
disp("calculate the frequency of oscillation,feedback factor & gain required for sustained oscillation")
printf("Given\n")
//Capacitance
C1=40*10^-12
C2=10*10^-12
//inductance
L=3*10^-3
//total effective capacitance
C=C1*C2/(C1+C2)
//frequency of oscillation
f=1/(2*%pi*sqrt(L*C))
//feedback factor
B=C2/C1
//gain required for sustained oscillation
Av=C1/C2
printf("gain required for sustained oscillation =\t>%f\n",Av)
