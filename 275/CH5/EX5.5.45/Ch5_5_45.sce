clc
disp("Example 5.45")
printf("\n")
disp("calculate the value of R & c for RC phase shift oscillator")
printf("Given\n")
//oscillating frequency
f=2000
//select Capacitor value
C=0.1*10^-6
//resistance value 
R=1/(2*%pi*f*C*sqrt(6)) 
printf("Resistance value \n%f ohm\n",R)
