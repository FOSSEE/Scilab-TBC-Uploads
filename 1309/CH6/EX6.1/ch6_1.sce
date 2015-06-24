clc;
clear;
printf("\t\t\tChapter6_example1\n\n\n");
// Determination of the fluid outlet tetnperature and the tube-wall temperature at the outlet.
// properties of ethylene glycol at 20 degree celsius from appendix table C5
Cp_20=2382;
rou_20=1.116*1000;
v_20=19.18e-6;
kf_20=.249;
a_20=.939e-7;
Pr_20=204;
// specifications of 1/2 standard type M seamless copper water tubing from appendix table F2
OD=1.588/100;
ID=1.446/100;
A=1.642e-4;
Q=3.25e-6;
V=Q/A;
printf("\nThe average flow velocity is %.1f m/s",V*100);
// calculation of Reynold's Number to check flow regime
Re=V*ID/v_20;
printf("\nThe Reynolds Number is %.1f",Re);
// since Re>he 2100, the flow regime is laminar and the hydrodynamic length can be calculated as
Z_h=0.05*ID*Re;
printf("\nThe hydrodynamic length is %.1f cm",Z_h*100);
Tbi=20; // bulk-fluid inlet temperature in degree celsius
qw=2200; // incident heat flux in W/m^2
L=3; // Length of copper tube in m
R=ID/2; // inner radius in m
Tbo=Tbi+(2*qw*a_20*L)/(V*kf_20*R);
printf("\nThe bulk-fluid outlet temperature is %.1f degree celsius",Tbo);
// This result is based on fluid properties evaluated at 20°C. taken as a first approximation
Z_t=0.05*ID*Re*Pr_20;
printf("\nThe thermal entry length is %.1f m",Z_t);
Two=Tbo+(11*qw*ID)/(48*kf_20); // The wall temperature at outlet in degree celsius
printf("\nThe wall temperature at outlet is %.1f degree celsius",Two);
//The result is based on first approximation based on flow properties evaluated at the fluid inlet temperature.
