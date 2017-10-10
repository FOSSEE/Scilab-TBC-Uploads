//Ex 2.9 page 72

clc;
clear;
close;

Vf1=1;// V
If1=0;//A
Vf2=1.9;// V
If2=60;//A
IT=20*%pi;// A
// PAV = 1/T*integrate(VT*IT,0,T)*dt = ITAV+0.015*IRMS**2
ITAV=IT/%pi;//A
ITRMS=IT/2;// A
dt=ITAV+0.015*ITRMS**2;// W
printf('Average power loss = %.1f W',dt)

