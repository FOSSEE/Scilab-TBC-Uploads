clear;
clc;
//Example 6.3
Vdd=10;
R1=70.9;//(Kohm)
R2=29.1;//(Kohm)
Rd=5;//(Kohm)
Vtn=1.5;
Kn=0.5;//(mA/V^2)
//lambda=y
y=0.01;//V^-1
Rsi=4;//(Kohm)
Vgsq=Vdd*R2/(R1+R2);
printf('\ngate to source voltage=%.2f V\n',Vgsq)
Idq=Kn*(Vgsq-Vtn)^2;
printf('\ndrain current=%.3f mA\n',Idq)
Vdsq=Vdd-Idq*Rd;
printf('\ndrain to source voltage=%.2f V\n',Vdsq)
g_m=2*Kn*(Vgsq-Vtn);
printf('\ntransconductance=%.3f mA/V\n',g_m)
ro=(y*Idq)^-1;
printf('\noutput resistance=%.2f KOhm\n',ro)
Ri=R1*R2/(R1+R2);
printf('\namplifier input resistance=%.2f Kohm\n',Ri)
Av=-g_m*(ro*Rd/(ro+Rd))*Ri/(Ri+Rsi);
printf('\nsmall signal voltage gain=%.2f\n',Av)
printf('\namplifier input resistance=%.2f Kohm\n',Ri)
Ro=Rd*ro/(Rd+ro);
printf('\namplifier output resistance=%.2f Kohm\n',Ro)
