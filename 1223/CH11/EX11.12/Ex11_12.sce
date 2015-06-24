clear;
clc;
//Example 11.12
Iq=0.587;
Kn=1;
Rd=16;
//lambda=y
y=0.01;
Ro=1/(y*Iq);
printf('\noutput resistance =%.2fKOhm\n',Ro)
Ad=sqrt(Kn*Iq/2)*Rd;
printf('\ndifferential mode voltage gain=%.2f \n',Ad)
Acm=-sqrt(2*Kn*Iq)*Rd/(1+2*sqrt(2*Kn*Iq)*Ro);
printf('\ncommon mode voltage gain=%.2f\n',Acm)
CMRR=20*log10(-Ad/Acm);
printf('\ncommon mode rejection ratio=%.2f dB\n',CMRR)
