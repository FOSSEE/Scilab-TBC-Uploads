//Calculate frequency of oscillations
clear;
clc;
//soltion
//given

R=10*10^3;//ohm
C=0.01*10^-6;//F
fo=1/(2*%pi*R*C*sqrt(6));
printf("The frequency of oscillations= %.1f Hz\n",fo);
