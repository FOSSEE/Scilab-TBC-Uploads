//Determine the maximum value of transmitted wave
clear
clc;
Z=350;//surge impedencr (ohms)
C=3000*(10^-12);// earth capacitance(F) 
t=2*(10^-6);
E=500;
E1=2*E*(1-exp((-1*t/(Z*C))));
mprintf("the maximum value of transmitted voltage=%.0f kV \n",E1);

