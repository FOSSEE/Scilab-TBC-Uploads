// Exa 2.23
clc;
clear;
close;
// Given data
R=100;// in ohm
del_R_by_R= 5;
L=2;// in Henry
del_L_by_L= 10;
omega= 2*%pi*50;
// Let
u=R^2;
Error_u= 2*del_R_by_R;
// Let
v= omega^2*L^2;
Error_v= 2*del_L_by_L;
// Let 
x= u+v;
Error_x= u/x*Error_u + v/x*Error_v;// in %
// Now
Z= x^(1/2);
Error_Z= 1/2*Error_x;
disp(Error_Z,"The uncertainly in the measurement of Z in percentage")
