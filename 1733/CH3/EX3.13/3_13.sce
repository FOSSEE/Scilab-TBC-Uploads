//3.13
clc;
Vdc=200;
VL=Vdc*(5*30/180)^0.5;
printf("RMS value of the output voltage = %.2f V", VL)
Vdc=220;
delta=(VL/Vdc)^2*180/5;
printf("\nPulse width = %.2f degree", delta)
V=VL/((5*33/180)^0.5);
printf("\nMaximum possible input voltage = %.2f V", V)