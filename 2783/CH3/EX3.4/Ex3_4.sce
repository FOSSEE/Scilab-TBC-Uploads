clc
//initialization of new variables
clear
F=20.9 //N
Vc=310 //cm^3
rho_w=1000 //kg/m^3
g=9.8 //m/s^2
//calculations
Wc=F+rho_w*g*Vc*10^-6
rho_c=Wc/(Vc*10^-6*g)
//result
printf('The crown density is %d kg/m^3',rho_c)

