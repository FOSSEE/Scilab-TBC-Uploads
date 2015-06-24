clear;
clc;

Db0=6*cosd(30);
Da0=3;
D01=5;
D12=.6;
Db1=Db0+D01
Db2=Db1+D12;
Da1=sqrt(Da0*Da0+D01*D01);
Dc1=Da1;
Dc2=sqrt(Da0*Da0+5.6*5.6);
Da2=Dc2;
ia=200;
ib=200*(cosd(-120)+(%i)*sind(-120));
ic=200*(cosd(120)+(%i)*sind(120));
lam=2*10^(-7)*(ia*log([Da2/Da1])+ib*log([Db2/Db1])+ic*log([Dc2/Dc1]));
lamda=sqrt(real(lam)^2+imag(lam)^2);
v=2*(%pi)*50*lamda;
bc=6;
oc=3;
b0=sqrt(bc*bc-oc*oc);
hc=15;
hb=b0+hc;
ha=hc;
r=19.53/2000;
va=132000/sqrt(3);
v1a=(log([(2*ha-Da1)/Da1])/log([(2*ha-r)/r]));
v1b=(log([(2*hb-Db1)/Db1])/log([(2*hb-r)/r]));
v1c=(log([(2*hc-Dc1)/Dc1])/log([(2*hc-r)/r]));
vb=v1b*(cosd(-120)+(%i)*sind(-120));
vc=v1c*(cosd(120)+(%i)*sind(120));
v1=va*(v1a+vb+vc);
V1=sqrt(real(v1)^2+imag(v1)^2);
printf("The voltage induced is :%.2f kV",V1/1000);






