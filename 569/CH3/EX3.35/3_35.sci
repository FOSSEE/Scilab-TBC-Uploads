//determine probable error in the computed value of resistnce

clc;
r_V=12;
I=10;
r_Rv=r_V/I;
V=100;
r1=2;
r_Ri=V*r1/I^2;
r_R=sqrt(r_Rv^2+r_Ri^2);
disp(r_R,'r_R');