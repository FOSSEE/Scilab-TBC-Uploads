clc
disp("Example 5.50")
printf("\n")
disp("calculate the frequency of oscillation & feedback factor of Hartley oscillator")
printf("Given\n")
//inductance
L1=2*10^-3
L2=8*10^-3
//mutual inductance
M=100*10^-6
//capacitor
C=0.001*10^-6
//total inductance 
L=L1+L2+M
//frequency of oscillation
f=1/(2*%pi*sqrt(L*C))
//feedback factor
B=L1/L2
printf("frequency of oscillation of hartley oscillator \n %f hz \n",f)
printf("feedback factor \n %f \n",B)