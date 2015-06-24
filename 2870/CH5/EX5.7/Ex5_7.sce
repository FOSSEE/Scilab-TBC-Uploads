clc;clear;
//Example 5.7

//given data
P1=2;
T1=400;
V1=50;
z1=10;
P2=15;
x2=0.9;
V2=180;
z2=6;
Wout=5*1000;//in kJ

//from Table A-6
h1=3248.4;
//similarly for P2
hf=225.94;
hfg=2372.3;

//constants used 
g=9.8;//in m/s^2

//calcualtions
h2=hf+x2*hfg;
disp((h2-h1),'difference in enthalpies in kJ/kg');
disp((V2^2-V1^2)/2/1000,'difference in kinetic energy in kJ/kg');//factor of 1000 to convert to kJ/kg
disp(g*(z2-z1)/1000,'difference in potential energy in kJ/kg');//factor of 1000 to convert to kJ/kg
wout=-((h2-h1)+(V2^2-V1^2)/2/1000+g*(z2-z1)/1000);//factor of 1000 to convert to kJ/kg
disp(wout,'work done per unit of mass in kJ/kg');
m=Wout/wout;
disp(m,'mass flow rate in kg/s')
