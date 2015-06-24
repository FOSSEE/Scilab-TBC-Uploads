//Ex:9.13
clc;
clear;
close;
Vs=3*10^4;// saturation in m/s
W=25*10^-6;// depletion layer width in m
E=10.5*10^-11;// in F/m
RL=15*10^6;// load resister in ohm
A=0.25*10^-6;// area in m^2
tr=W/Vs;// transit time in sec
Cj=E*A/W;// junction capacitance in F
t=RL*Cj;// time constant in sec
printf("The transit time =%f ns", tr*10^9);
printf("\n The junction capacitance =%f pF", Cj*10^12);
printf("\n The time constant =%f us", t*10^6);