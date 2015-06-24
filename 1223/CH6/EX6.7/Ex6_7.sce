clear;
clc;
//Example 6.7
Vdd=12;
R1=162;
R2=463;
Rs=0.75;
Kn=4;
Vtn=1.5;
//lambda=y
y=0.01;
Rsi=4;
Idq=7.97;
Vgsq=2.91;
g_m=2*Kn*(Vgsq-Vtn);
printf('\ntransconductance=%.2f mA/V\n',g_m)
ro=(y*Idq)^-1;
printf('\noutput resistance=%.2f KOhm\n',ro)
Ri=R1*R2/(R1+R2);
printf('\namplifier input resistance=%.3f Kohm\n',Ri)
x=Rs*ro/(Rs+ro);
Av=g_m*x*(Ri/(Ri+Rsi))/(1+g_m*x);
printf('\nsmall signal voltage gain=%.2f\n',Av)
