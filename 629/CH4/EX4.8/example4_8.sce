clear
clc
//Example 4.8 APPLICATION OF PITOT EQUATION WITH MANOMETER
g=32.2; //[ft/s^2]
y=7/12; //[ft]
//Specific gravities
S_kero=0.81;
S_Hg=13.55;
//Specific weights
g_water=62.4; //[lbf/ft^3]
g_Hg=S_Hg*g_water //[lbf/ft^3]
g_kero=S_kero*g_water //[lbf/ft^3]
rho_kero=g_kero/g //density[lbm/ft^3]
//Manometer equation, pz1-pz2=y*(gamma_Hg-gamma_kero)
//Pitot-static tube equation, V=[2*(pz1-pz2)/rho]^(1/2)
V=(2*y*(g_Hg-g_kero)/rho_kero)^(1/2) //[ft/s]
printf("\n The kerosene velocity in the pipe = %.1f ft/s.\n",V)