clc;clear;
//Example 3.12

//given values
v=0.51431;
T=600;

//from Table A-1E
R=0.5956;
Pcr=3200;
Tcr=1164.8;

//calculation

//Part A
//from Table A-6E
P=1000;//in psia
disp(P,'from the steam tables in psia');

//Part B
T=1060;//converted into R from F
P=R*T/v;
disp(P,'from the ideal-gas equation in psia');

//Part C
//calculating the pseudo-reduced specific volume and the reduced temperature
Vr=v/(R*Tcr/Pcr);
Tr=T/Tcr;
//from the compressibility chart
Pr=0.33;
P=Pr*Pcr;
disp(P,'from the generalized compressibility chart. in psia')
