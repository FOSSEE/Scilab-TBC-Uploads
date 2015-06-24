clc
disp("Example 5.44")
printf("\n")
disp("calculate the value of Capacitor for a RC phase shift oscillator")
printf("Given\n")
R=1000
//frequency of oscillation
f=5000
//capacitor value
C=1/(2*%pi*R*f*sqrt(6))
printf("Capacitor value \n%e farad \n",C)
