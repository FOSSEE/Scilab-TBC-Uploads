clear;
clc;

sg1=25
sg2=15
sg3=30
st1=30
st2=15
st3=10*3;

vg1=6.6;
vg2=6.6;
vg3=13.2;
vt1a=6.6
vt1b=115
vt2a=6.6
vt2b=115
vt3a=69*sqrt(3);
vt3b=6.9*sqrt(3);
nt1=vt1b/vt1a;
nt2=vt2b/vt2a;
nt3=vt3b/vt3a;

xg1=.2
xg2=.15
xg3=.15
xt1=.1
xt2=.1
xt3=.1

Sb=30;
Vb1=6.6;
Vb2=Vb1*nt1;
Vb3=Vb2*nt2;
Vb4=Vb2*nt3;

Xg1=xg1*Sb/sg1;
Xg2=xg2*Sb/sg2;
Xg3=xg3*Sb/sg3* (vg3/Vb4)^2;
Xt1=xt1 * Sb/st1;
Xt2=xt2 * Sb/st2;
Xt3= xt2 * Sb/st3 * (vt3b/Vb4)^2

 mprintf ("\nReactance of Generator 1= %.2f pu",Xg1);
 mprintf ("\nReactance of Generator 2= %.1f pu",Xg2);
 mprintf ("\nReactance of Generator 3= %.4f pu",Xg3);
 mprintf ("\nReactance of Transformer 1= %.1f pu",Xt1);
 mprintf ("\nReactance of Transformer 2= %.1f pu",Xt2);
 mprintf ("\nReactance of Transformer 3= %.3f pu",Xt3);


Zbl=Vb2^2/Sb;

xl1=120;
xl2=90

Xl1=xl1/Zbl;
Xl2=xl2/Zbl;

 mprintf ("\nReactance of Line 1 = %.4f pu",Xl1);
 mprintf ("\nReactance of line 2 = %.3f pu",Xl2);
