// Exa 2.22
clc;
clear;
close;
// given :
f1=60 // frequency in Hz
omega1=2*%pi*f1 // angular frequency in Hz
f2=100 // frequency in MHz
f2=100*10^6 // frequency in Hz
omega2=2*%pi*f2 // angular frequency in Hz
sigma=5.8*10^7 // conductivity in mho/m
epsilon_0=8.854*10^-12 // permittivity in free space in F/m
mu_0=4*%pi*10^-7 //  permeability in free space in H/m
epsilon_r=1 // relative permittivity
mu_r=1 // relative permeability
epsilon=epsilon_r*epsilon_0 // permittivity
mu=mu_0*mu_r // permeability

disp("At f=60Hz")
k1=(sigma)/(omega1*epsilon) // ratio
disp(k1," ratio k is equal to")
disp("since k>>1 therefore it is very good conductor at f=60Hz:")
delta1=(sqrt(2/(omega1*mu*sigma))) // depth of penetration in m
disp(delta1,"depth of penetration delta1 in m:")

disp("At f=100Hz")
k2=sigma/(omega2*epsilon) // ratio
disp(k2,"ratio k is equal to")
disp("since k2>>1 therefore it is very good conductor at f=100Hz:")
delta2=(sqrt(2/(omega2*mu*sigma))) // depth of penetration in m
disp(delta2,"depth of penetration delta2 in m:")
