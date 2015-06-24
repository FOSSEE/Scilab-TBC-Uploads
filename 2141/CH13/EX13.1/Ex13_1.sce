
clc
//initialisation of variables
T1=25//C
T2=25//C
g=0//ft^3/lbm
v=0.00712//ft^3/lbm
vd=0.00456//Btu/lb mole-R
Bt=3.0*10^-6//atm^-1
Bd=0.16*10^-6//atm^-1
G=(1233/12)*(778/14.7*144)//Btu/lb mole-R
//CALCULATIONS
Gd=(v-vd)-(v*Bt-vd*Bd)//Btu/lb mole-R
P=15500//atm
//RESULTS
printf('The pressure=% f atm',P)
