clear;
clc;

V=66;
V=V/sqrt(3);
T=60;
d=2;
r=d/2;
D=5.3;
R=D/2;

V=fix(V*sqrt(2) *10)/10;

a=(R/r)^(1/3);
a=round(a*1e3)/1e3;
r1=a*r;
r2=round(a*r1*1000)/1000;
V1= V *((1/r)-(1/r2)) *r ;
V2= (V-( V1* ((1/r)-(1/r1))) )*r1;
//An error exists in the text book while calculating V1 and V2 and hence Emax and Emin

Emax= (V-V1)/(r * log (a));
Emin= (V-V1)/(r1 * log (a));
mprintf("\n When intersheaths are used:\n Emax= %.2f kV/cm \t Emin= %2f kV/cm",Emax,Emin);
mprintf("\n Peak voltages at intersheaths:\n V1= %.2f kV \t V2= %.2f kV\n",V1,V2);
disp("An error exists in the text book while calculating V1 and V2 and hence Emax and Emin")

Emax= (V)/(r * 3*log (a));
Emin= (V)/(R * 3*log (a));
mprintf("\n When intersheaths are not used:\n Emax= %.1f kV/cm \t Emin= %.2f kV/cm",Emax,Emin);

