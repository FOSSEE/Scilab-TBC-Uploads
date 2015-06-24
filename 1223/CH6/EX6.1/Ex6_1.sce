clear;
clc;
//Example 6.1
Vtn=1;
//let x= u_n*Cox*1/2
x=20*10^-3;
//let y=W/L
y=40;
I_D=1;
Kn=x*y;
printf('\nconduction parameter=%.3f mA/V^2\n',Kn)
g_m=2*sqrt(Kn*I_D);
printf('\ntransconductance=%.3f mA/V\n',g_m)
