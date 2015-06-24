clc
disp("Example 5.43")
printf("\n")
disp("calculate the frequency of oscillation of RC phase shift oscillator")
printf("Given\n")
R=500
C=0.1*10^-6
//frequency of oscillation
f=1/(2*%pi*R*C*sqrt(6))
printf("frequency of oscillation \n%f hz\n",f)
