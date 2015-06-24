clear;
clc;

m=.847;
g=9.81;
dia=1.95e-2;
l=244;
T=3.56e4;
Th_ice=.96e-2;
F_wind= 382;
W_ice=8920;
h=7.62;
L=1.43;

//(a)
w=m*g;
S= (w*l*l)/(8*T);
mprintf("\n (a)Sag= %.2f m", S);

//(b)
D=dia+Th_ice+Th_ice;
Fw=F_wind * D;
Wice = W_ice * (%pi/4) * ((D*D)-(dia*dia));
F=((w+Wice)^2 + Fw^2)^.5;
s=(F*l*l)/(8*T);
a=atan(Fw/(w+Wice));
S2=s * cos (a);
mprintf("\n (b)Vertical Sag= %.2f m", S2);

//(c)
H=h+L+S2;
mprintf("\n (c)Height of lowest cross arm= %.2f m", H);

