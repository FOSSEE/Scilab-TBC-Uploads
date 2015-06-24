clc;clear;
//Example 3.11

//given values
P=1;
T=50+273;//converting into Kelvin
vgiv=0.021796;//specific vol. given

//from Table A-1
R=0.0815;
Pcr=4.059;
Tcr=374.2;

//calculation

//Part A
v1=R*T/(P*1000);
disp(v1,'specific volume of refrigerant-134a under the ideal-gas assumption in m^3/kg');
e=(v1-vgiv)/vgiv;
disp(e,'an error of');

//Part B
//determine Z from the compressibility chart, we will calculate the reduced pressure and temperature
Pr=P/Pcr;
Tr=T/Tcr;
//from chart
Z=0.84;
v=Z*v1;
disp(v,'specific volume of refrigerant-134a under the generalized compressibility chart in m^3/kg');
e=(v-vgiv)/vgiv;
disp(e,'an error of');
