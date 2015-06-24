clear;
clc;
//Example 4.4
b=100;
Vbe=0.7;
Va=100;
V_T=0.026;//(V)
//from dc analysis
Icq=0.95;
Vceq=6.31;
//ac analysis
r_pi=b*V_T/Icq;
printf('\nsmall signal resistance=%.2f KOhm\n',r_pi)
g_m=Icq/V_T;
printf('\ntransconductance=%.3f mA/V\n',g_m)
Rs=0.5;
Rc=6;
ro=Va/Icq;
printf('\nro=%.2f KOhm\n',ro)
Av=-g_m*(5.9*r_pi/(5.9+r_pi))/((5.9*r_pi/(r_pi+5.9))+Rs)*ro*Rc/(ro+Rc);
printf('\nsmall signal voltage gain=%.2f \n',Av)
Ri=5.9*r_pi/(r_pi+5.9);
printf('\ninput resistance=%.3f KOhm\n',Ri)
Ro=ro*Rc/(ro+Rc);
printf('\noutput resistance=%.2f KOhm\n',Ro)
