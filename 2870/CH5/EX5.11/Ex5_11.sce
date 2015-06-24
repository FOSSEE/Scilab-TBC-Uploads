clc;clear;
//Example 5.11

//giaven data
T1=17+273;//in K
P1=100;
V1=150;
Win=15;
Qout=200/1000;//in kJ/s

//constants used
R=0.287;//in kPa-m^3/kg-K
cp=1.005;//in kJ/kg C

//calculations
v1=R*T1/P1;
m=V1/v1/60;//factor of 6 to convert to s
// Win - Qout = m*cp*(T2-T1)
T2= T1 + (Win - Qout)/(m*cp);
disp((T2-273),'exit temperature in C')
