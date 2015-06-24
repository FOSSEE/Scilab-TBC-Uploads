clear;
clc;
//Example 6.9
Rs=750;//Ohm
ro=12500;
g_m=11.3*10^-3;
x=1/g_m;
y=x*Rs/(x+Rs);
Ro=y*ro/(y+ro);
printf('\noutput resistance=%.3f ohm\n',Ro)
