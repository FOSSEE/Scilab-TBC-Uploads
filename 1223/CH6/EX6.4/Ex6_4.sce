clear;
clc;
//Example 6.4
Vtn=1;
Kn=1;//(mA/V^2)
//lambda=y
y=0.015;//V^-1
Ri=100;//(Kohm)
Idq=2;//(mA)
Idt=4;//(mA)
//Idt=4=Kn*(Vgst-Vtn)^2
Vgst=sqrt(Idt/Kn)+Vtn;
printf('\nVgst=%.2f V\n',Vgst)
Vdst=Vgst-Vtn;
printf('\nVdst=%.2f V\n',Vdst)
Vdd=12;
Vdsq=7;
Rd=(Vdd-Vdsq)/Idq;
printf('\nRd =%.2fKOhm\n',Rd)
Vgsq=sqrt(Idq/Kn)+Vtn;
printf('\nVgsq=%.2f V\n',Vgsq)
R1=Ri*Vdd/Vgsq;
printf('\nR1=%.2f Kohm\n',R1)
R2=Ri*R1/(R1-Ri);
printf('\nR2=%.2f Kohm\n',R2)
g_m=2*Kn*(Vgsq-Vtn);
printf('\ntransconductance=%.3f mA/V\n',g_m)
ro=(y*Idq)^-1;
printf('\noutput resistance=%.2f KOhm\n',ro)
Av=-g_m*(ro*Rd/(ro+Rd));
printf('\nsmall signal voltage gain=%.2f\n',Av)
