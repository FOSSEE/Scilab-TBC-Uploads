// Determine (i)the value of the Voltage wave when it has travelled through a distance 50 Km. (ii) Power loss and Heat loss.

clear
clc;
eo=50;
x=50;
R=6;
Z=400;
G=0;
v=3*(10^5);
e=2.68;
e1=(eo*(e^((-1/2)*R*x/Z)));
// answess does not match due to the difference in rounding off of digits. 
mprintf("(i)the value of the Voltage wave when it has travelled through a distance 50 Km=%.1f kV \n",e1);
Pl=e1*e1*1000/400;
io=eo*1000/Z;
t=x/v;
H=-(50*125*400*((e^-.75)-1))/(6*3*10^5)
mprintf("(ii)Power loss=%.3fkW  \n heat loss=%.3f kJ",Pl,H);
