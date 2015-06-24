clear;
clc;
//Example 4.7
Iq=0.5;
b=120;
Va=80;
V_T=0.026;//(V)
rc=120;//small signal collector resistance (KOhm)
//Icq=Iq
Icq=0.5;
g_m=Icq/V_T;
printf('\ntransconductance=%.3f mA/V\n',g_m)
ro=Va/Icq;
printf('\nsmall signal output resistance=%.2f KOhm\n',ro)
Av=-g_m*ro*rc/(ro+rc);
printf('\nsmall signal voltage gain=%.3f \n',Av)
