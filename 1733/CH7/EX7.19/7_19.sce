//7.19;
clc;
p=4
f=50;
ns=2*f*60/p;
TL_1300=40*(1300/1440)^2;
printf("Load torque=%.2f Nm",TL_1300)
n=1300;
s=(ns-n)/ns;
r2s=0.08*2^2; // in book r2'=r2s
x2s=0.12*2^2;
I2s=(TL_1300*2*%pi*s*25/(3*r2s))^0.5;
I2=2*I2s;
printf("\nRotor current=%.2f A",I2)
r1=0.64;
x1=1.1;
V1=I2s*((r1+r2s/s)^2+(x1+x2s)^2)^0.5;
Vstator=3^0.5*V1;
printf("\nStator applied voltage=%.1f V",Vstator)


