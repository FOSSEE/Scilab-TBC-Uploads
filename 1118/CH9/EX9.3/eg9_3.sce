clear;
//clc();
l=1000000;      //length in cm
s=5000000;
v=11000/sqrt(3);
f=50;
pf=0.8;
rho=.000001774;
i=s/(3*v*pf);
rp=0.1*s/(3*i*i);
a=rho*l/rp;
r=sqrt(a/%pi);
r1=0.7788*r;
d=200;
L=2*.001*log([d/r1]);

xlp=2*(%pi)*f*L;
qs=acosd(pf);
z=rp+(%i)*xlp;
vs=v+z*i*(cosd(-qs)+(%i)*sind(-qs));
vsp=sqrt(real(vs)^2+imag(vs)^2);
vsl=sqrt(3)*vsp;
printf("\n the line voltage at the sending end is: %.2f kv",vsl/1000);

qs1=atand(imag(vs)/real(vs));
pf1=qs1-(-qs);      //negative sign is due to the load is lagging
pf=cosd(pf1);
printf("\n the power factor of the sending end is:%.2f (lagging)",pf);












