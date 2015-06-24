clear;
clc;
//Example 4.10
b=100;
Vbe=0.7;
V_T=0.026;//(V)
Re=2;
R1=50;
R2=50;
Rs=0.5;
Va=80;
//by dc analysis
Icq=0.793;
Vceq=3.4;
r_pi=b*V_T/Icq;
printf('\nsmall signal resistance=%.3f KOhm\n',r_pi)
g_m=Icq/V_T;
printf('\ntransconductance=%.3f mA/V\n',g_m)
ro=Va/Icq;
printf('\nsmall signal output resistance=%.2f KOhm\n',ro)
Rib=r_pi+(1+b)*Re*ro/(ro+Re);
printf('\ninput resistance to the base=%.2f KOhm\n',Rib)
//Ri=R1||R2||Rib
x=R1*R2/(R1+R2);
Ri=x*Rib/(x+Rib);
printf('\nRi=%.2f KOhm\n',Ri)
y=ro*Re/(ro+Re);
Av=(1/(r_pi+(1+b)*y))*(1+b)*y*Ri/(Ri+Rs);
printf('\nsmall signal voltage gain=%.3f \n',Av)
