clear;
clc;
//page no.8

T = 80;//temperature of chlorine gas in degree F
p = 100;//pressure in psia
W = 2*35.45;//molecular weight of chlorine 
R = 1545/W;//specific gas constant in ft-lb/lb-degreeR
gam = p*(144/R)*(1/(460+T));//specific weight of chlorine in lb/cuft
Spec_vol = 1/gam;//specific volume in cuft/lb
rho = gam/32.2;//density of chlorine in slug/cuft
printf('Spec. weight = %.3f lb/cuft\n Spec. volume = %.3f cuft/lb\n density = %.4f slug/cuft',gam,Spec_vol,rho);
