clear;
clc;

xg1=.2
xg2=.3
xt1=.2;
xt2=.06
zl=complex(40,150);

Vg1=250
Vg2=250;
Vt1a=250
Vt1b=800;
Vt2a=1000;
Vt2b=500
nt1=Vt1b/Vt1a;
nt2=Vt2b/Vt2a;

sg1=2000;
sg2=2000;
st1=4000;
st2=8000;

Vb1=250;
Vb2=Vb1*nt1;
Vb3=Vb2*nt2;

Sb=5000;
Zbl=Vb2^2/Sb;

Zl=zl/Zbl;
Xt1=xt1 /( (Vb1/Vt1a)^2 * (st1/Sb));
Xt2=xt2 / ((Vb2/Vt2a)^2 * (st2/Sb)); 
Xg1=xg1 /  (sg1/Sb);
Xg2=xg2 /  (sg2/Sb);

 mprintf ("\nReactance of Generator 1= %.1f ",Xg1);
 mprintf ("\nReactance of Generator 2= %.2f ",Xg2);
 mprintf ("\nReactance of Transformer 1= %.2f ",Xt1);
 disp (round(Zl*1e4)/1e4,"Impedance of Line = ");
 mprintf ("\nReactance of Transformer 2= %.4f ",Xt2);
