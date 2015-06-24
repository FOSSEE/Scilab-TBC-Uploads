clc;
clear all;
C=2.4*1e-12;//given capacitance in F
e0=8.854*1e-12;//permittivity of vacume
a=4*1e-4;//area in m^2
d=0.5*1e-2;//thickness
tandelta=0.02;
er=(C*d)/(e0*a);//relative permittivity
disp(er,'relative permittivity is=');
lf=er*tandelta;//loss factor
disp(lf,'electric loss factor is=');
delta=atan(0.02);
PA=90-delta;//phase angle
disp(PA,'phase angle is=');
//slight variation in ans than book.. checked in calculator also
