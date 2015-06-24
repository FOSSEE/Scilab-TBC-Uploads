clear;
clc;
//Example 6.6
Vtn=0.8;
Kn=1;//(mA/V^2)
Idq=0.5;
Vdd=5;
Rd=7;//(Kohm)
Vgsq=sqrt(Idq/Kn)+Vtn;
printf('\nVgsq=%.2f V\n',Vgsq)
Vs=-Vgsq
Vdsq=Vdd-Idq*Rd-Vs;
printf('\nVdsq=%.2f V\n',Vdsq)
g_m=2*Kn*(Vgsq-Vtn);
printf('\ntransconductance=%.3f mA/V\n',g_m)
Av=-g_m*Rd;
printf('\nsmall signal voltage gain=%.2f\n',Av)
