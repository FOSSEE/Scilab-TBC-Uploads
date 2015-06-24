//Example 3.2.4 // flux density and diameter
clc;
clear;
close;
//given data :
format('v',5)
p=1.7*10^-8;//in ohm-m
V=100*10^-3;//in V
R=50;// in ohm
theta=120;//in degree
L=30;// in mm
d=25;// in mm
N=100;
C=0.375*10^-6;// in Nm/degree
I=V/R;
Td_By_B=I*L*10^-3*d*10^-3*N;
Tc=C*theta;
B=Tc/Td_By_B;
disp(B,"the flux density,B(Wb/m^2) = ")
Rc=0.3*R;
Lmt=2*(L+d);
a=(N*p*Lmt*10^-3*10^6)/Rc;
D=sqrt(4/(%pi*a));
disp(D,"diameter,D(m) = ")
