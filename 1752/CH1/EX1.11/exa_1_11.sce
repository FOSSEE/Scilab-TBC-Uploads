//Exa 1.11
clc;
clear;
close
// given data
k_Al=202;// in W/mK
x_Al=0.005;// in m
del_T=80;// in degree C
R_contact=0.88*10^-4;// in m^2K/W
sigmaR=x_Al/k_Al+R_contact+x_Al/k_Al;// in m^2K/W
q=del_T/sigmaR;// in W/m^2
//Temperature drop across the rough surface
del_T=q*R_contact;//in degree C
disp(del_T,"Temperature drop across the rough surface in degree C is :")
