//Calculate frequency of oscillations
clear;
clc;
//soltion
//given

R=22*10^3;//ohm
C=100*10^-12;//F
fo=1/(2*%pi*R*C);
printf("The frequency of oscillations= %.2f KHz\n",fo/1000);
