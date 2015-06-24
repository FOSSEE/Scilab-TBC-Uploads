clc;
clear;
printf("\t\t\tChapter6_example2\n\n\n");
// determination of average convection coefficient
T_avg=(140+70)/2;
printf("\nThe average bulk temperature is %d degree celsius",T_avg);
// properties of water at average bulk temperature from appendix table C11
rou=.994*62.4;
kf=.363;
cp=.9980;
a=5.86e-3;
v=0.708e-5;
Pr=4.34;
// specifications of 1 standard type M copper tube from appendix table F2
OD=1.125/12; // outer diameter in ft
ID=0.8792; // inner diameter in ft
A=0.006071 // cross sectional area in sq.ft
m_flow=1.5; // mass flow rate in lbm/s
V=m_flow*3600/(rou*A); // velocity in ft/hr
printf("\nThe velocity is %d ft/hr",V);
L=20;
Tw=240;
Tbo=140;
Tbi=70;
hL=-(rou*V*ID*cp*log((Tw-Tbo)/(Tw-Tbi)))/(4*L);
printf("\nThe average convective coefficient is %d BTU/(hr. sq.ft.degree Rankine)",hL);
