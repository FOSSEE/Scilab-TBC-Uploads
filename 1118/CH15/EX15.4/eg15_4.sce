clear;
clc;

zac=complex(.05,.2);
rac=real(zac);
vc=1;
i1=1.05;
i2=.9;
zbc=complex(.04,.16);
rbc=real(zbc);
zcd=complex(.03,.12);
rcd=real(zcd);
va=vc+zac*i1;
vb=vc+zbc*i2;
p1=real(va*conj(i1));
p2=real(vb*conj(i2));
b11=(rac+rcd)/(real(va)^2);
b12=rcd/(real(va)*real(vb));
b22=(rbc+rcd)/(real(vb)^2);
pl=p1*p1*b11+p2*p2*b22+2*p1*p2*b12;
printf("The transmission loss is:%.4f pu",pl);

