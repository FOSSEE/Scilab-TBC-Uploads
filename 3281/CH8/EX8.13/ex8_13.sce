//Page Number: 435
//Example 8.13
clc;
//Given
e0=8.854D-12;
er=4;
d=0.1D-6; //m
si=0.85;
e=1.6D-19; //J
Na=1D+20;

Ci=(e0*er)/d;
disp('F/m',Ci,'Junction capacitance:');

W=sqrt((2*e0*er*si)/(e*Na));
disp('m',W,'Depletion layer width:');
