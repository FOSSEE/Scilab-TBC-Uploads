clc
disp("Example 5.61")
printf("\n")
disp("calculate the frequency of oscillation for Wein_Bridge Oscillator")
printf("Given\n")
//Resistance
R=2*10^3
//capacitor
C=0.1*10^-6
//frequency of oscillation
f=1/(2*%pi*R*C)
printf("frequecy of oscillation \n%f hz\n",f)
