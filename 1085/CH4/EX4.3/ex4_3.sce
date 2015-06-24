//Exam:4.3
clc;
clear;
close;
F_1=3.02*10^(-9);//force of attraction b/w ions of Na+ and Cl-
Z_1=+1;
Z_2=-1;
e=1.6*10^(-19);
E_o=8.854*10^-12;
pi=22/7;
r_Na=0.95;//ionic radius of Na+ ion
r=(-Z_1*Z_2*e^2/(4*pi*E_o*F_1))^(1/2);//Radius of ion in meter
R=r/10^(-10);//Radius of ion in Angstrom
r_Cl=(R-r_Na);//Radius of Cl- ion in Angstrom
disp(r_Cl,'Ionic Radius of Cl- ion (in Angstrom)=');