//ques12
//Cooling of an Iron Block by Water
clear
clc
V=0.5//volume in m^3
v=0.001//specific volume of water in m^3/Kg
m=V/v//mass in kg
//dUiron+dUwater=0 ie change in internal energy of system = 0
//mi*Ci*(T2-T1i)+mw*Cw*(T2-T1w)=0
mi=50//mass of ice in Kg
mw=500//mass of water in Kg
Ci=0.45//specific heat of ice in kJ/mol
Cw=4.18//specific heat of water in kJ/mol
T1i=80//initial temperature of ice in C
T1w=25//initial temperature of water in C
T2=(mi*Ci*T1i+mw*Cw*T1w)/(mi*Ci+mw*Cw);//final temperature of mixture in C
printf(' Final temperature = %.1f C ',T2);
