clear;
clc;

sg1=10
sg2=20
st1=10
st2=10*3;

vg1=6.6;
vg2=11.5;
vt1a=6.6
vt1b=115
vt2a=75*sqrt(3);
vt2b=7.5*sqrt(3);
nt1=vt1b/vt1a;
nt2=vt2b/vt2a;
xg1=.1
xg2=.1
xt1=.15
xt2=.1


Sb=20;
Vb1=6.6;
Vb2=Vb1*nt1;
Vb3=Vb2*nt2;

Xg1=xg1*Sb/sg1;
Xg2=xg2*Sb/sg2;
Xt1=xt1 * Sb/st1;
Xt2= xt2 * Sb/st2 * (vt2a/Vb2)^2

 mprintf ("\nReactance of Generator 1= %.1f",Xg1);
 mprintf ("\nReactance of Generator 2= %.1f",Xg2);
 mprintf ("\nReactance of Transformer 1= %.1f ",Xt1);
 mprintf ("\nReactance of Transformer 2= %.5f ",fix(Xt2*1e5)/1e5);


Zbl=Vb2^2/Sb;

xab=100;
xad=100
xbc=150;
xbd=200;
xdc=50;

Xab=xab/Zbl;
Xad=xad/Zbl;
Xbc=xbc/Zbl;
Xbd=xbd/Zbl;
Xdc=xdc/Zbl;

printf("\nXab=%.4f\t", Xab);
printf("Xad=%.4f\t", Xad);
printf("Xbc=%.4f\t", Xbc);
printf("Xbd=%.4f\t", Xbd);
printf("Xdc=%.4f\t", Xdc);


