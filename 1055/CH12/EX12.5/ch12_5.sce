//Determine the maximum value of transmitted surge
clear
clc;
Z=350;//surge impedencr (ohms)
L=800*(10^-6); 
t=2*(10^-6);
E=500;
E1=E*(1-exp((-1*t*2*Z/L)));
mprintf("The maximum value of transmitted voltage=%.1f kV \n",E1);

