clc
//initialization of new variables
clear
W=275 //kg
rho_c=1.22 //kg/m^3
D=15 //m
g=9.8 //m/s^2
Tc=290 //K
//calculations
L=W*g
Tr=1-(6*L/(rho_c*g*%pi*D^3))  // Tc/Th
Th=Tc/Tr
//result
printf('The temperature required is % .1f K',Th)
