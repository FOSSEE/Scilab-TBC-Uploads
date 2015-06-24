// Determine the KV Ar of the Modifier and the maximum load that can be transmitted 
clear
clc;
a=0;
b=73.3
A=1;
B=20.88;
Vs=66;
Vr=66;
Load=75;
p=poly([14624 400 1],'Qr','c');
r=roots(p);
Qr=- 40.701538;
C=-Qr + (75*.6/.8);
Smax=(Vr^2)*(1-cosd(b))/B;
mprintf("The phase modifier capacity =%.2f MV Ar\n",C);
mprintf("Maximum power transmitted ,Pmax =%.2f MW",Smax);

