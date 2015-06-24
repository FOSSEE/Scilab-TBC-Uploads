clear;
clc;
//Example 6.2
Vgsq=2.12;
Vdd=5;
Rd=2.5;
Vtn=1;
Kn=0.8;
//let lambda=y
y=0.02;//V^-1
Idq=Kn*(Vgsq-Vtn)^2;
printf('\ndrain current=%.3f mA\n',Idq)
Vdsq=Vdd-Idq*Rd;
printf('\ndrain to source voltage=%.3f V\n',Vdsq)
Vgs=1.82;
Vgs-Vtn
//since Vdsq>Vgs-Vtn transistor is biased in saturation
g_m=2*Kn*(Vgsq-Vtn);
printf('\ntransconductance=%.3f mA/V\n',g_m)
ro=(y*Idq)^-1;
printf('\noutput resistance=%.2f KOhm\n',ro)
Av=-g_m*ro*Rd/(ro+Rd);
printf('\nsmall signal voltage gain=%.2f\n',Av)
