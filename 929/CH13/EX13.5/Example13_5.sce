//Example 13.5

clear;

clc;

Kv=10^4;

wz=10^3;

wp=(wz^2)/Kv;

wn=sqrt(wp*Kv);

zeta=(wn/(2*wz))*(1+(wz/Kv));

wmin3dBh=wn*sqrt(1+(2*(zeta^2))+sqrt(1+((1+(2*(zeta^2)))^2)));

tau=1/wn;

printf("(a) zeta=%.2f",zeta);

printf("\n    tau=%.d ms",tau*10^3);

printf("\n    w-3dB=%.1f krad/s",wmin3dBh*10^(-3));

y=poly(0,'s')

Hs=((((2*zeta)-(wn/Kv))*(y/wn))+1)/(((y/wn)^2)+(2*zeta*(y/wn))+1);

r=real(roots(((y/wn)^2)+(2*zeta*(y/wn))+1));

i=imag(roots(((y/wn)^2)+(2*zeta*(y/wn))+1));

pr=r(1,1);

pi=abs(i(1,1));

printf("\n\n(b) Step Response of ve(t)=(|wi|/Ko)*[1-(A*exp(%.ft)*cos(",pr);

printf("%.ft+phi))]",pi);

wm=1*10^3;

vewirat=1/(1+(%i*(wm/Kv)));

ratm=1.286;

rata=45;

printf("\n    AC Response of ve(t)=(|wi|/Ko)*%.3f*cos(",ratm);

printf("%.f*t-",wm);

printf("%.f degrees)",rata);