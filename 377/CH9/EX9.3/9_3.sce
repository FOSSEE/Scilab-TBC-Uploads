a=1000;  //say a=μe
Vt=0.0258;
c=300;  //say c=μh
Dn=a*Vt;
Dp=c*Vt;
printf('\n The value of Dn is %f cm^2/V-s',Dn);
printf('\n The value of Dp is %f cm^2/V-s',Dp);
ni=10^10;
Na=10^16;
Nd=4*10^16;
np0=ni^2/Na;
pn0=ni^2/Nd;
printf('\n The value of np0 is %f cm^-3',np0);
printf('\n The value of pn0 is %f cm^-3',pn0);
tn=10^-5;
tp=10^-5;
Ln=sqrt(Dn*tn);
Lp=sqrt(Dp*tp);
f=Ln*10^-2;
g=Lp*10^-2;
printf('\n The value of Ln is %fm',f);
printf('\n The value of Lp is %fm',g);
disp("I=q*A*((Dn*np0/Ln)+(Dp*pn0/Lp))*exp((Va/Vt)-1);");
q=1.6;
A=10^4;
Va=0.6;
I=q*A*3*((Dn*np0/f)+(Dp*pn0/g))*exp((Va/Vt)-1);
printf('\n The value of I is %f μA',I*10^-22);