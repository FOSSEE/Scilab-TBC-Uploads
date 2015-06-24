//chapter 7
//example 7.1
//Calculate the capacitance of capacitor and charge on the plates
//page 187
clear;
clc;
//given
A=100; // in cm^2 (cross-sectional area)
d=1; // in cm (seperation between plates)
Eo=8.85E-12; // in F/m (absolute permittivity)
V=100; // in V (potential difference)
//calculate
A=A*1E-4; // changing unit from cm^2 to m^2
d=d*1E-2; // changing unit from cm to m
C=Eo*A/d;// calculation of capacitance
Q=C*V; // calculation of charge
printf('\nThe capacitance of capacitor is \t C=%1.2E C',C);
C=C*1E12; // changing unit of capacitance from F to pF
printf('\n\t\t\t\t\t  =%.2f pF',C);
printf('\n\nThe charge on the plates is \t\t Q=%1.2E C',Q);

