// To determine the frequency of natural oscillations if the genrator is loaded to (i)60% and (ii)75% of its maximum power transfer capacity
clear 
clc;
V1=1.1;
V2=1;
X=.5;
cosdo=.8;
G=1;
H=3;
f=50;
M=G*H/(%pi*f);
dPe=V1*V2*cosdo/X;
fn=(((dPe)/M)^.5)/6.28;
sind0=.75;
d0=asind(sind0);
dPe2=V1*V2*cosd(d0)/X;
fn2=(((dPe2)/M)^.5)/6.28;
mprintf("(i)fn=%.2f Hz\n",fn);
mprintf("(i)fn(Hz)=%.2f Hz",fn2);
