clear;
clc;
//Example 4.2
V_pi=50;//(V)
Icq=1;//(mA)
ro=V_pi/Icq;
printf('\nsmall signal output resistance=%.1f KOhm\n',ro)
Rc=6;
g_m=38.5;
r_pi=2.6;
Rb=50;
Av=-(g_m)*(Rc*ro/(Rc+ro))*r_pi/(r_pi+Rb);
printf('\nsmall signal voltage gain=%.2f \n',Av)
