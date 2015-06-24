clear;
clc;
//Example 11.17
Va=100;
R4=10;
b=100;
Rc11=1.26*10^3;
r8=2.6;
Iq=0.2;
Rc7=Va/Iq;
printf('\nRc7=%.2f KOhm\n',Rc7)
Z=Rc11*Rc7/(Rc11+Rc7);
printf('\nZ=%.2f KOhm\n',Z)
x=(r8+Z)/(1+b);
Ro=R4*x/(R4+x);
printf('\noutput resistance=%.2f KOhm\n',Ro)
