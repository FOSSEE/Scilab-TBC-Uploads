//Exam:4.4
clc;
clear;
close;
Z_1=+2;
Z_2=-2;
r_Mg=0.65;//radius of Mg++ ion
r_S=1.84;//radius of S-- ion
r=r_Mg+r_S;//net radius(in Angstrom)
R=r*10^(-10);//net radius(in meter)
e=1.6*10^(-19);
E_o=8.854*10^-12;
pi=22/7;
F=-Z_1*Z_2*e^2/(4*pi*E_o*R^2);//force of attraction between ions(in Newton)
disp(F,'force of attraction between ions(in Newton)=');