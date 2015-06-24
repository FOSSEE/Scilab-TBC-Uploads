clear;
clc;

vg=11e3;
sg=90e6;
xg=.25;

st1=100e6;
vt1a=10e3;
vt1b=132e3;
nt1=vt1a/vt1b;
xt1=.06;

st2=30e6 *3;
vt2a=66e3 * sqrt(3);
vt2b=10e3;
nt2=vt2a/vt2b;
xt2=.05;

sm1=50e6;
vm1=10e3;
xm1=.2;

sm2=40e6;
vm2=10e3;
xm2=.2;

xl=100;

Sb=sg;
Vbg=vg;

Xg=xg * (vg/Vbg)^2 * (Sb/sg);
Xt1=xt1 * (vt1a/Vbg)^2 * (Sb/st1);

Vbl=Vbg/nt1;
Xl=xl * (Sb) / (Vbl)^2 ;

Vbm=Vbl/nt2;

Xt2=xt2 * (vt2b/Vbm)^2 * (Sb/st2);
Xm1=xm1 * (vm1/Vbm)^2 * (Sb/sm1);
Xm2=xm2 * (vm2/Vbm)^2 * (Sb/sm2);

 mprintf ("\nReactance of Generator = %.2f ",Xg);
 mprintf ("\nReactance of Transformer 1= %.4f ",Xt1);
 mprintf ("\nReactance of Line = %.3f ",Xl);
 mprintf ("\nReactance of Transformer 2= %.3f ",Xt2);
 mprintf ("\nReactance of Motor 1= %.3f ",Xm1);
 mprintf ("\nReactance of Motor 2= %.3f ",Xm2);
