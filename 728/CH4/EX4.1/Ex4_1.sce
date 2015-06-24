//Caption:Calculate (i)-inductance per unit length,(ii)-capacitance per unit length,(iii)-charcteristic impedance,(iv)-velocity of propagation
//Exa:4.1
clc;
clear;
close;
//Given:
d=0.49;//in cm
D=1.1;//in cm
e_r=2.3;
c=3*10^8;//in meter/second
L=2*(10^-7)*log(D/d);//in Henry/meter
C=55.56*(10^-12)*(e_r)/log(D/d);//in farad/meter
R_o=(60/sqrt(e_r)) *log(D/d);//in ohms
v=c/sqrt(e_r);//in meter/second
disp(L,'Inductance per unit length(in H/m) =');
disp(C,'Capacitance per unit length(in F/m) =');
disp(R_o,'Characteristic Impedance (in ohms) =');
disp(v,'Velocity of propagation (in m/s)=');