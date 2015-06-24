clc
clear
R=10;//ohm
L=.001;//H
C=5*10^-6;//F
V_s=230;//V
xi=R/(2*L);
w_o=1/sqrt(L*C);
w_r=sqrt((1/(L*C))-(R/(2*L))^2);
t=%pi/w_r;    printf('conduction time of diode=%.3f us',t*10^6);
t=0;
//di=di/dt
di=V_s/L;    printf('\nrate of change of current at t=0 is %.0f A/s',di);
