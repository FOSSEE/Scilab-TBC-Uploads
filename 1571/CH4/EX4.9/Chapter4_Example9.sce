clc
clear

//INPUT
t=323;//temperature of the hydrogen molecule in K
m1=1;//mass of the hydrogen molecule in gm
m2=2;//molecular weight of the hydrogen in gm
r=8.3*10^7;//universal gas constant in erg/K/mole

//CALCULATIONS
e=(m1*r*t*3/(m2*2));//kinetic enrgy of the hydrogen molecule in ergs

//OUTPUT
mprintf('the kinetic energy of the molecule is %3.2fergs',e)
