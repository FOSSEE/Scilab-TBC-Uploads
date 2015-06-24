clc
disp("Example 5.49")
printf("\n")
disp("calculate frequency of oscillation,feedback factor & gain required for sustained oscillation of hartley oscillator")
printf("Given\n")
//inductance
L1=5*10^-3
L2=10*10^-3
//capacitor
C=0.01*10^-6
//frequency of oscillation
f=1/(2*%pi*sqrt((L1+L2)*C))
//feedback factor
B=L1/L2
//gain required for sustained oscillation
Av=L2/L1
printf("gain required for sustained oscillation=\t>%f\n",Av)