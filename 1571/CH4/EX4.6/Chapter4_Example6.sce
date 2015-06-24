clc
clear

//INPUT
m=1;//mass of the oxygen in gm
r=8.31*10^7;//universal gas constant in erg/K/mole
t=320;//temperature of the oxygen in K
//for 1gm mole k.e is 1.5rt then for 1 gm oxygen (1/32)(k.e)

//CALCULATIONS
e=(m/32)*(3*r*t/2);//kinetic energy of the oxygen in erg

//OUTPUT
mprintf('the kinetic energy of the oxygen is %3.2ferg',e)
