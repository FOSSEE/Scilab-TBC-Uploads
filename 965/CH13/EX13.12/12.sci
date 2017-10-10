clc;
clear all;
disp("molar diffusion flux")
D=5.2*10^(-6);// m^2/s
mbl=0.2;//mole of benzene in liquid phase
mbv=0.55;//mole of benzene in vapor phase
pv=0.72;//bar vapor pressure of toulene
p=1;// bar atmospheric pressure 
pt1=(1-mbl)*pv;// bar
pt2=(1-mbv)*p;// bar
L=0.35/1000;//m
G=8314;// gas constant
T=105+273;// K
Nt=D*(pt1-pt2)*10^5/(G*L*T);//kg mole/(m^2*s)
disp("kg mole/(m^2*s)",Nt,"molar diffusion flux of toulene Nt =")


