clc;clear;
//Example 5.4

//given data
T1=283;//in K
P1=80;
V1=200;
A1=0.4;

//constants used
R=0.287;//in kPa-m^3/kg-K

//calulations
v1=R*T1/P1;
m=V1*A1/v1;
disp(m,'mass flow rate of air in kg/s');
// Ein - Eout = dEsystem / dt
//from Table A-17
h1=283.14;
V2=0;
h2=h1-(V2^2 - V1^2)/2/1000;//factor of 1000 to convert to kJ/kg
//from Table A-17 at this value of h2
T2=303;
disp(T2,'the temperature in K is');
