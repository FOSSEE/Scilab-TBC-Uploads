clc;clear;
//Example 8.7

//given data
P1=1000;
V=200;
T1=300;
T0=T1;
P0=100;

//constants used
R=0.287;//in kPa m^3/kg K

//calculations
m1=P1*V/(R*T1);
O1=R*T0*(P0/P1-1)+R*T0*log(P1/P0);// O refers to exergy
X1=m1*O1/1000;//factor of 1000 for converting kJ into MJ
X1=round(X1);
disp(X1,'work obtained in MJ')
