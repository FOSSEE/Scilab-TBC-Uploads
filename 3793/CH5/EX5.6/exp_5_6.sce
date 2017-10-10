clear;
clc;
v1=66;
v2=11;
v3=6.6;
s1=20;
s2=10;
s3=5;
Xps=0.1;
Xpt=0.12;
Xst=.08;
//now these rectance in pu and converted into 50 MVA base
xps=Xps*(50/s1);
xpt=Xpt*(50/s1);
xst=Xst*(50/s2);
Xp=complex(0,((xps+xpt-xst)/2));
Xs=complex(0,((xps-xpt+xst)/2));
Xs1=complex(0,((-xps+xpt+xst)/2));
mprintf(" pu leakage reactances are %f, %f and %f",imag(Xp),imag(Xs),imag(Xs1));

