clear;
clc;

vg=11e3;
sg=80e6;
xg=.25;

st1=100e6;
vt1a=11e3;
vt1b=220e3;
nt1=vt1a/vt1b;
xt1=.05;

st2=150e6;
vt2a=230e3 ;
vt2b=33e3;
nt2=vt2a/vt2b;
xt2=.04;

r=250;

zl=complex(5,100);

Sb=100e6;
Vbg=11e3;

Xg=xg * (vg/Vbg)^2 * (Sb/sg);
Xt1=xt1 * (vt1a/Vbg)^2 * (Sb/st1);

Vbl=Vbg/nt1;
Zl=zl * (Sb) / (Vbl)^2 ;

Vbm=Vbl/nt2;
Xt2=xt2 * (vt2a/Vbl)^2 * (Sb/st2);
R=r * (Sb) / (Vbm)^2 ;


Vg=vg/Vbg;
i=Vg/(Zl+complex(R,Xt1+Xt2+Xg))
I=round(abs(i)*1e4)/1e4;

Ic=I*Sb/(sqrt(3)*Vbg);
Il=I*Sb/(sqrt(3)*Vbl);
Ir=I*Sb/(sqrt(3)*Vbm);
Vload=Ir*r/1000;
Vloadll=sqrt(3) * Vload;
Pr=3*Ir*Ir*r/1e6;
mprintf("\n Generator Current = %.1f A",Ic);
mprintf("\n Line Current = %.3f A",Il);
mprintf("\n Load Current = %.1f A",Ir);
mprintf("\n Load Voltage = %.2f kV",Vloadll);
mprintf("\n Load Power = %.3f MW",Pr);

