//4.10
clc;
Ton=25*10^-3;
Toff=10*10^-3;
V=230;
VL=V*Ton/(Ton+Toff);
printf("\nAverage value of Load voltage = %.3f V", VL)