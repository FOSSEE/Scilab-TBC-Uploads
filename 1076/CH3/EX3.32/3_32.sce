clear;
clc;

VAt1=10
VAt2=10
Xt1=.1;
Xt2=.08
Vt1a=13.8
Vt1b=138
Vt2a=138
Vt2b=69
n1=Vt1b/Vt1a
n2=Vt2b/Vt2a


Sb=10
Vbb=138;
Vba=Vbb / n1;
Vbc=Vbb*n2;

Zbc=Vbc^2/Sb;

R=300;
Rpu=R/Zbc;

v=66
V=v/Vbc;
I=V/Rpu;
Va=V+(I*complex(0,Xt1+Xt2));
va=abs(Va)*Vba;

mprintf("Voltage in ckt A = %.3f kV", va);

